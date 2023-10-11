part of 'admin_update_employee_bloc.dart';

@freezed
class AdminUpdateEmployeeEvent with _$AdminUpdateEmployeeEvent {
  const factory AdminUpdateEmployeeEvent.updateEmployee({required String userUid,
    required String email,
    required String? password,
    required String firstname,
    required String lastname,
    required String phoneNumber,
    required String role,
    required DateTime dateOfBirth,
    required DateTime worksSince,
    required String? imgFilename,
    required List<int>? imgBytes}) = _UpdateEmployeeEvent;
}
