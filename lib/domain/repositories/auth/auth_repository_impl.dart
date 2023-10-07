import 'package:firebase_auth/firebase_auth.dart';
import 'package:industria/domain/repositories/auth/auth_repository_contract.dart';

class AuthRepositoryImpl implements AuthRepository{
  final FirebaseAuth auth;

  @override
  Future<void> signInAsAdmin({required String email, required String password}) {
    return auth.signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Stream<User?> get userChanges => auth.userChanges();

  @override
  Future<void> logout() {
    return auth.signOut();
  }

  const AuthRepositoryImpl({
    required this.auth,
  });
}