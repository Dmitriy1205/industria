import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/repositories/admin_vacancy/admin_vacancy_repository_contract.dart';

import '../../../../core/constants/exceptions.dart';


part 'create_company_event.dart';

part 'create_company_state.dart';

part 'create_company_bloc.freezed.dart';

class CreateCompanyBloc extends Bloc<CreateCompanyEvent, CreateCompanyState> {
  final AdminVacancyRepository adminVacancyRepository;

  CreateCompanyBloc({required this.adminVacancyRepository})
      : super(const CreateCompanyState.initial()) {
    on<CreateCompanyEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(
          CreateCompanyEvent event, Emitter<CreateCompanyState> emit) =>
      event.map(createCompany: (e) => _createCompany(e, emit));

  Future<void> _createCompany(
      CreateCompanyEvent event, Emitter<CreateCompanyState> emit) async {
    emit(const CreateCompanyState.loading());
    try {
      emit(const CreateCompanyState.initial());
      await adminVacancyRepository.createCompany(
          companyName: event.companyName,
          photoName: event.photoName,
          photoBytes: event.photoBytes);
      emit(const CreateCompanyState.successful());
    } on BadRequestException catch(_){
      emit(const CreateCompanyState.error(code: "name-exists"));
    } catch (e) {
      emit(const CreateCompanyState.error(code: "error"));
    } finally{
      await Future.delayed(const Duration(seconds: 3));
      emit(const CreateCompanyState.initial());
    }
  }
}
