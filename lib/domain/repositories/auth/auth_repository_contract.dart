import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository{
  Stream<User?> get userChanges;
  Future<void> signInAsAdmin({required String email, required String password});
  Future<void> logout();
}