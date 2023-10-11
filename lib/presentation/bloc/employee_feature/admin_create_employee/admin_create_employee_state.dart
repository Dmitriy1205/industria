part of 'admin_create_employee_bloc.dart';

@freezed
class AdminCreateEmployeeState with _$AdminCreateEmployeeState {
  const factory AdminCreateEmployeeState.initial() = _InitialState;
  const factory AdminCreateEmployeeState.loading() = _LoadingState;
  const factory AdminCreateEmployeeState.success() = _SuccessState;
  const factory AdminCreateEmployeeState.fail() = _FailState;
}
