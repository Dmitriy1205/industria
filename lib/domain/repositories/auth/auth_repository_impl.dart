import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:industria/core/constants/firestore_collections.dart';
import 'package:industria/domain/entities/employee/employee.dart';
import 'package:industria/domain/repositories/auth/auth_repository_contract.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore db;

  @override
  Future<void> signInAsAdmin(
      {required String email, required String password}) async {
    final user =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    if(user.user != null){
      final isEmployeeAccount = (await user.user!.getIdTokenResult()).claims!.entries
          .where((e) => e.key == "employee" && e.value == true)
          .isNotEmpty;
      if(isEmployeeAccount) throw FirebaseAuthException(code: "invalid-credentials", message: "You can't use employee account to log in to admin account.");
    }
  }

  @override
  Stream<Employee?> get employeeChanged async* {
    await for (var e in auth.userChanges()) {
      if (e == null) {
        yield null;
      } else if ((await e.getIdTokenResult()).claims!.entries
          .where((e) => e.key == "employee" && e.value == true)
          .isNotEmpty) {
        final empRecord = await db
            .collection(FirestoreCollections.employees)
            .doc(e.uid)
            .get();
        if (empRecord.exists) {
          yield Employee.fromJson(empRecord.data()!);
        } else {
          yield null;
        }
      } else {
        yield null;
      }
    }
  }


  @override
  Stream<User?> get adminChanged => auth.userChanges().asyncMap((e) async => e == null ? null : (await e.getIdTokenResult()).claims!.entries.where((e) => e.key == "employee" && e.value == true).isEmpty ? e : null);

  @override
  Future<void> logout() {
    return auth.signOut();
  }

  @override
  Future<void> signInAsEmployee(
      {required String email, required String password}) async {
    final user =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    if(user.user != null){
      final isAdminAccount = (await user.user!.getIdTokenResult()).claims!.entries
          .where((e) => e.key == "employee" && e.value == true)
          .isEmpty;
      if(isAdminAccount) throw FirebaseAuthException(code: "invalid-credentials", message: "You can't use admin account to log in to employee account.");
    }
  }

  const AuthRepositoryImpl({
    required this.auth,
    required this.db,
  });
}
