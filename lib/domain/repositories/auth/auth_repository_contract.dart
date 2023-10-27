import 'package:firebase_auth/firebase_auth.dart';
import 'package:industria/domain/entities/employee/employee.dart';

abstract class AuthRepository{
  Stream<User?> get adminChanged;
  Stream<Employee?> get employeeChanged;
  Future<void> signInAsAdmin({required String email, required String password});
  Future<void> signInAsEmployee({required String email, required String password});
  Future<void> logout();
}