part of 'attendance_graph_bloc.dart';

@freezed
class AttendanceGraphState with _$AttendanceGraphState {
  const AttendanceGraphState._();

  AttendanceGraph? get graph => maybeMap(
      working: (state) => state.graph,
      breaked: (state) => state.graph,
      finished: (state) => state.graph,
      notStarted: (state) => state.graph,
      orElse: () => null);

  bool get isLoaded => maybeMap(initial: (_) => false, orElse: () => true);

  const factory AttendanceGraphState.initial() = _InitialState;
  const factory AttendanceGraphState.notStarted({required AttendanceGraph graph}) = _NotStartedState;
  const factory AttendanceGraphState.working({required AttendanceGraph graph}) = _WorkingState;
  const factory AttendanceGraphState.breaked({required AttendanceGraph graph}) = _BreakedState;
  const factory AttendanceGraphState.finished({required AttendanceGraph graph}) = _FinishedState;
}
