part of 'create_company_bloc.dart';

@freezed
class CreateCompanyEvent with _$CreateCompanyEvent {
  const factory CreateCompanyEvent.createCompany({required String companyName, required String photoName, required List<int> photoBytes}) = _CreateCompanyEvent;
}
