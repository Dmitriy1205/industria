import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/repositories/employee_documents/employee_documents_repository_contract.dart';

part 'delete_employee_document_event.dart';

part 'delete_employee_document_state.dart';

part 'delete_employee_document_bloc.freezed.dart';

class DeleteEmployeeDocumentBloc
    extends Bloc<DeleteEmployeeDocumentEvent, DeleteEmployeeDocumentState> {
  final EmployeeDocumentsRepository employeeDocumentsRepository;

  DeleteEmployeeDocumentBloc({required this.employeeDocumentsRepository})
      : super(const DeleteEmployeeDocumentState.initial()) {
    on<DeleteEmployeeDocumentEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(DeleteEmployeeDocumentEvent event,
          Emitter<DeleteEmployeeDocumentState> emit) =>
      event.map(deleteDocument: (e) => _deleteDocument(e, emit));

  Future<void> _deleteDocument(_DeleteDocumentEvent event, Emitter<DeleteEmployeeDocumentState> emit) async{
    emit(const DeleteEmployeeDocumentState.loading());
    try{
      await employeeDocumentsRepository.deleteDocuments(employeeUid: event.employeeUid, ids: event.uids);
      emit(const DeleteEmployeeDocumentState.success());
      emit(const DeleteEmployeeDocumentState.initial());
    }catch(e){
      emit(const DeleteEmployeeDocumentState.fail());
      emit(const DeleteEmployeeDocumentState.initial());
    }
  }
}
