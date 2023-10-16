import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/domain/entities/feedback/feedback.dart';

import '../../../../core/table_data/table_data.dart';
import '../../../../domain/repositories/admin_feedback/admin_feedback_repository_contract.dart';

part 'admin_feedback_list_event.dart';

part 'admin_feedback_list_state.dart';

part 'admin_feedback_list_bloc.freezed.dart';

class AdminFeedbackListBloc
    extends Bloc<AdminFeedbackListEvent, AdminFeedbackListState> {
  final AdminFeedbackRepository adminFeedbackRepository;

  AdminFeedbackListBloc({required this.adminFeedbackRepository})
      : super(const AdminFeedbackListState.initial()) {
    on<AdminFeedbackListEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
          AdminFeedbackListEvent event, Emitter<AdminFeedbackListState> emit) =>
      event.map(
          fetchData: (e) => _fetchData(e, emit),
          changeSearchTerm: (e) => _changeSearchTerm(e, emit));

  Future<void> _fetchData(_FetchInitialDataEvent event,
      Emitter<AdminFeedbackListState> emit) async {
    final previousState = state;
    try {
      final tableData = await adminFeedbackRepository.listFeedbacks(
          page: event.page,
          elementsPerPage: event.elementsPerPage,
          searchTerm: state.searchTerm);
      emit(AdminFeedbackListState.loaded(
          tableData: tableData, searchTerm: state.searchTerm));
    } catch (e) {
      emit(previousState);
    }
  }

  Future<void> _changeSearchTerm(_ChangeSearchTermEvent event,
      Emitter<AdminFeedbackListState> emit) async {
    emit(AdminFeedbackListState.loaded(
        tableData: state.tableData, searchTerm: event.searchTerm));
    add(AdminFeedbackListEvent.fetchData(page: 0, elementsPerPage: 5));
  }
}
