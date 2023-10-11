part of 'admin_delete_employee_bloc.dart';

@freezed
class AdminDeleteEmployeeState with _$AdminDeleteEmployeeState {
  const factory AdminDeleteEmployeeState.initial() = _InitialState;
  const factory AdminDeleteEmployeeState.loading() = _LoadingState;
  const factory AdminDeleteEmployeeState.success() = _SuccessState;
  const factory AdminDeleteEmployeeState.fail() = _FailState;
}
