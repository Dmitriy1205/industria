part of 'admin_feedback_list_bloc.dart';

@freezed
class AdminFeedbackListEvent with _$AdminFeedbackListEvent {
  const factory AdminFeedbackListEvent.fetchData({required int page,
    required int elementsPerPage}) = _FetchInitialDataEvent;

  const factory AdminFeedbackListEvent.changeSearchTerm({required String searchTerm}) = _ChangeSearchTermEvent;
}
