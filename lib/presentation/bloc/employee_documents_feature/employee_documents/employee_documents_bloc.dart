import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/employee_document/employee_document.dart';
import '../../../../domain/repositories/employee_documents/employee_documents_repository_contract.dart';

part 'employee_documents_event.dart';
part 'employee_documents_state.dart';
part 'employee_documents_bloc.freezed.dart';

class EmployeeDocumentsBloc extends Bloc<EmployeeDocumentsEvent, EmployeeDocumentsState> {
  final EmployeeDocumentsRepository employeeDocumentsRepository;

  EmployeeDocumentsBloc({required this.employeeDocumentsRepository}) : super(const EmployeeDocumentsState.initial()) {
    on<EmployeeDocumentsEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(EmployeeDocumentsEvent event, Emitter<EmployeeDocumentsState> emit) => event.map(fetchData: (e) => _fetchData(e, emit));

  Future<void> _fetchData(_FetchDataEvent event, Emitter<EmployeeDocumentsState> emit) async{
    final previousState = state;
    try{
      final documents = await employeeDocumentsRepository.getEmployeeDocuments(employeeUid: event.employeeUid);
      emit(EmployeeDocumentsState.loaded(documents: documents));
    }catch(e){
      emit(previousState);
    }
  }
}
