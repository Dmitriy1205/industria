part of 'admin_update_company_bloc.dart';

@freezed
class AdminUpdateCompanyState with _$AdminUpdateCompanyState {
  const factory AdminUpdateCompanyState.initial() = _InitialState;
  const factory AdminUpdateCompanyState.loading() = _LoadingState;
  const factory AdminUpdateCompanyState.success() = _SuccessState;
  const factory AdminUpdateCompanyState.fail({required String code}) = _Failtate;
}
