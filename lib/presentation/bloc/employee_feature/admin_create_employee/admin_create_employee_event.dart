part of 'admin_create_employee_bloc.dart';

@freezed
class AdminCreateEmployeeEvent with _$AdminCreateEmployeeEvent {
  const factory AdminCreateEmployeeEvent.createEmployee({
    required String email,
    required String password,
    required String firstname,
    required String lastname,
    required String phoneNumber,
    required String role,
    required DateTime dateOfBirth,
    required DateTime worksSince,
    required String imgFilename,
    required List<int> imgBytes}) = _CreateEmployeeEvent;
}
