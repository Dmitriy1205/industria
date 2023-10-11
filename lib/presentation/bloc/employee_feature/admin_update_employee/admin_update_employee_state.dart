part of 'admin_update_employee_bloc.dart';

@freezed
class AdminUpdateEmployeeState with _$AdminUpdateEmployeeState {
  const factory AdminUpdateEmployeeState.initial() = _InitialState;
  const factory AdminUpdateEmployeeState.loading() = _LoadingState;
  const factory AdminUpdateEmployeeState.success() = _SuccessState;
  const factory AdminUpdateEmployeeState.fail() = _Failtate;
}
