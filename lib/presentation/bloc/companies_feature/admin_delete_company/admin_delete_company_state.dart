part of 'admin_delete_company_bloc.dart';

@freezed
class AdminDeleteCompanyState with _$AdminDeleteCompanyState {
  const factory AdminDeleteCompanyState.initial() = _InitialState;
  const factory AdminDeleteCompanyState.loading() = _LoadingState;
  const factory AdminDeleteCompanyState.success() = _SuccessState;
  const factory AdminDeleteCompanyState.fail() = _FailState;
}
