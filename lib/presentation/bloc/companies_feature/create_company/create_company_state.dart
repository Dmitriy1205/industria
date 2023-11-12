part of 'create_company_bloc.dart';

@freezed
class CreateCompanyState with _$CreateCompanyState {
  const factory CreateCompanyState.initial() = _InitialState;
  const factory CreateCompanyState.loading() = _LoadingState;
  const factory CreateCompanyState.successful() = _SuccessfulState;
  const factory CreateCompanyState.error({required String code}) = _ErrorState;
}
