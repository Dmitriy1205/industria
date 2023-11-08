part of 'admin_update_company_bloc.dart';

@freezed
class AdminUpdateCompanyEvent with _$AdminUpdateCompanyEvent {
  const factory AdminUpdateCompanyEvent.updateCompany({required String uid, required String companyName, required String? photoName, required List<int>? photoBytes}) = _UpdateCompanyEvent;
}
