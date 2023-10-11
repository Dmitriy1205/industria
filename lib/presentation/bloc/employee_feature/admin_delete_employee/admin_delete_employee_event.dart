part of 'admin_delete_employee_bloc.dart';

@freezed
class AdminDeleteEmployeeEvent with _$AdminDeleteEmployeeEvent {
  const factory AdminDeleteEmployeeEvent.deleteEmployee({required String userUid}) = _DeleteEmployeeEvent;
}
