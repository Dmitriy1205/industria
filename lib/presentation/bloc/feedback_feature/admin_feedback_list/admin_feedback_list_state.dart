part of 'admin_feedback_list_bloc.dart';

@freezed
class AdminFeedbackListState with _$AdminFeedbackListState {
  const AdminFeedbackListState._();
  TableData<List<Feedback>> get tableData => maybeMap(
      loaded: (state) => state.tableData,
      orElse: () => const TableData(totalElementCounts: 0, element: [], numberOfPages: 1, currentPage: 0));

  String get searchTerm => maybeMap(
      loaded: (state) => state.searchTerm,
      orElse: () => "");

  const factory AdminFeedbackListState.initial() = _InitialState;
  const factory AdminFeedbackListState.loaded({required TableData<List<Feedback>> tableData, required String searchTerm}) = _LoadedState;
}
