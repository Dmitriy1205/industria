import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/repositories/employee_documents/employee_documents_repository_contract.dart';

part 'create_employee_document_event.dart';
part 'create_employee_document_state.dart';
part 'create_employee_document_bloc.freezed.dart';

class CreateEmployeeDocumentBloc extends Bloc<CreateEmployeeDocumentEvent, CreateEmployeeDocumentState> {
  final EmployeeDocumentsRepository employeeDocumentsRepository;
  CreateEmployeeDocumentBloc({required this.employeeDocumentsRepository}) : super(const CreateEmployeeDocumentState.initial()) {
    on<CreateEmployeeDocumentEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(CreateEmployeeDocumentEvent event, Emitter<CreateEmployeeDocumentState> emit) => event.map(createDocument: (e) => _createDocument(e, emit));

  Future<void> _createDocument(_CreateDocumentEvent event, Emitter<CreateEmployeeDocumentState> emit) async{
    try {
      emit(const CreateEmployeeDocumentState.loading());
      await employeeDocumentsRepository.createDocument(
        name: event.name,
        filename: event.filename,
        bytes: event.bytes,
        employeeUid: event.employeeUid
      );
      await Future.delayed(const Duration(seconds: 3));
      emit(const CreateEmployeeDocumentState.success());
      await Future.delayed(const Duration(seconds: 3));
      emit(const CreateEmployeeDocumentState.initial());
    } catch (e) {
      emit(const CreateEmployeeDocumentState.fail());
      await Future.delayed(const Duration(seconds: 3));
      emit(const CreateEmployeeDocumentState.initial());
    }
  }
}
