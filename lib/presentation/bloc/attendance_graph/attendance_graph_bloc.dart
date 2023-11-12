import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/core/enums/attendance_graph_status.dart';
import 'package:industria/domain/attendance_graph_key/attendance_graph_key.dart';

import '../../../domain/entities/attendance_graph/attendance_graph.dart';
import '../../../domain/repositories/attendance_graph/attendance_graph_repository_contract.dart';

part 'attendance_graph_event.dart';

part 'attendance_graph_state.dart';

part 'attendance_graph_bloc.freezed.dart';

class AttendanceGraphBloc
    extends Bloc<AttendanceGraphEvent, AttendanceGraphState> {
  final AttendanceGraphRepository attendanceGraphRepository;

  AttendanceGraphBloc({required this.attendanceGraphRepository}) : super(const AttendanceGraphState.initial()) {
    on<AttendanceGraphEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
          AttendanceGraphEvent event, Emitter<AttendanceGraphState> emit) =>
      event.map(
          fetchAttendanceGraph: (e) => _fetchAttendanceGraph(e, emit),
          startWork: (e) => _startWork(e, emit),
          startBreak: (e) => _startBreak(e, emit),
          stopBreak: (e) => _stopBreak(e, emit),
          finishWork: (e) => _finishWork(e, emit));

  Future<void> _fetchAttendanceGraph(_FetchAttendanceGraphEvent event, Emitter<AttendanceGraphState> emit) async{
    final graph = await attendanceGraphRepository.fetchAttendanceGraph(userUid: event.userUid, date: event.date);
    if(graph == null){
      emit(AttendanceGraphState.notStarted(graph: AttendanceGraph(date: event.date, status: AttendanceGraphStatus.notStarted, userId: event.userUid)));
    }else if(graph.status == AttendanceGraphStatus.working){
      emit(AttendanceGraphState.working(graph: graph));
    }else if(graph.status == AttendanceGraphStatus.breaked){
      emit(AttendanceGraphState.breaked(graph: graph));
    }else if(graph.status == AttendanceGraphStatus.finished){
      emit(AttendanceGraphState.finished(graph: graph));
    }
  }

  Future<void> _startWork(_StartWorkEvent event, Emitter<AttendanceGraphState> emit) async{
    final graph = AttendanceGraph(date: event.date, status: AttendanceGraphStatus.working, userId: event.userUid, keys: [
      AttendanceGraphKey(mark: event.date, status: AttendanceGraphStatus.working)
    ]);
    await attendanceGraphRepository.saveAttendanceGraph(graph: graph);
    emit(AttendanceGraphState.working(graph: graph));
  }

  Future<void> _startBreak(_StartBreakEvent event, Emitter<AttendanceGraphState> emit) async{
    final existingGraph = state.graph!;
    final newGraph = existingGraph.copyWith.call(
        status: AttendanceGraphStatus.breaked,
        keys: [...existingGraph.keys, AttendanceGraphKey(mark: event.date, status: AttendanceGraphStatus.breaked)]);
    await attendanceGraphRepository.saveAttendanceGraph(graph: newGraph);
    emit(AttendanceGraphState.breaked(graph: newGraph));
  }

  Future<void> _stopBreak(_StopBreakEvent event, Emitter<AttendanceGraphState> emit) async{
    final existingGraph = state.graph!;
    final newGraph = existingGraph.copyWith.call(
        status: AttendanceGraphStatus.working,
        keys: [...existingGraph.keys, AttendanceGraphKey(mark: event.date, status: AttendanceGraphStatus.working)]);
    await attendanceGraphRepository.saveAttendanceGraph(graph: newGraph);
    emit(AttendanceGraphState.working(graph: newGraph));
  }

  Future<void> _finishWork(_FinishWorkEvent event, Emitter<AttendanceGraphState> emit) async{
    final existingGraph = state.graph!;
    final newGraph = existingGraph.copyWith.call(
        status: AttendanceGraphStatus.finished,
        comment: event.comment,
        totalPause: existingGraph.pause ?? 0.0,
        keys: [...existingGraph.keys, AttendanceGraphKey(mark: event.date, status: AttendanceGraphStatus.finished)]);
    await attendanceGraphRepository.saveAttendanceGraph(graph: newGraph);
    emit(AttendanceGraphState.finished(graph: newGraph));
  }
}
