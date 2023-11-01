part of 'admin_delete_company_bloc.dart';

@freezed
class AdminDeleteCompanyEvent with _$AdminDeleteCompanyEvent {
  const factory AdminDeleteCompanyEvent.deleteCompany({required String companyUid}) = _DeleteCompanyEvent;
}
