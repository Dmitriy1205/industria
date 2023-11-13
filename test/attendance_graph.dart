import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:industria/core/enums/attendance_graph_status.dart';
import 'package:industria/domain/entities/attendance_graph/attendance_graph.dart';
import 'package:industria/domain/entities/attendance_graph_key/attendance_graph_key.dart';
import 'package:industria/domain/repositories/attendance_graph/attendance_graph_repository_contract.dart';
import 'package:industria/presentation/bloc/attendance_graph/attendance_graph_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockAttendanceGraphRepository extends Mock
    implements AttendanceGraphRepository {}

class FakeAttendanceGraph extends Fake implements AttendanceGraph{}

void main() {
  const String userUid = "iVds12dackFl";
  final attendanceGraphRepo = MockAttendanceGraphRepository();
  DateTime startWorkTime = DateTime(2023, 11, 1, 8);
  DateTime startBreakTime = DateTime(2023, 11, 1, 12);
  DateTime stopBreakTime = DateTime(2023, 11, 1, 13);
  DateTime finishWorkTime = DateTime(2023, 11, 1, 18);
  String comment = "Day was good";
  setUpAll((){
    registerFallbackValue(FakeAttendanceGraph());
  });
  blocTest("attendance report is formed",
      build: () {
        when(() => attendanceGraphRepo.saveAttendanceGraph(graph: any(named: "graph")))
            .thenAnswer((_) => Future.value());
        return AttendanceGraphBloc(
            attendanceGraphRepository: attendanceGraphRepo);
      },
      act: (bloc) => bloc
        ..add(AttendanceGraphEvent.startWork(
            date: startWorkTime, userUid: userUid))
        ..add(AttendanceGraphEvent.startBreak(date: startBreakTime))
        ..add(AttendanceGraphEvent.stopBreak(date: stopBreakTime))
        ..add(AttendanceGraphEvent.finishWork(
            date: finishWorkTime, comment: comment)),
      expect: () => [
            AttendanceGraphState.working(
                graph: AttendanceGraph(
                    date: startWorkTime,
                    status: AttendanceGraphStatus.working,
                    userId: userUid,
                    keys: [
                  AttendanceGraphKey(
                      mark: startWorkTime,
                      status: AttendanceGraphStatus.working)
                ])),
            AttendanceGraphState.breaked(
                graph: AttendanceGraph(
                    date: startWorkTime,
                    status: AttendanceGraphStatus.breaked,
                    userId: userUid,
                    keys: [
                  AttendanceGraphKey(
                      mark: startWorkTime,
                      status: AttendanceGraphStatus.working),
                  AttendanceGraphKey(
                      mark: startBreakTime,
                      status: AttendanceGraphStatus.breaked)
                ])),
            AttendanceGraphState.working(
                graph: AttendanceGraph(
                    date: startWorkTime,
                    status: AttendanceGraphStatus.working,
                    userId: userUid,
                    keys: [
                  AttendanceGraphKey(
                      mark: startWorkTime,
                      status: AttendanceGraphStatus.working),
                  AttendanceGraphKey(
                      mark: startBreakTime,
                      status: AttendanceGraphStatus.breaked),
                  AttendanceGraphKey(
                      mark: stopBreakTime,
                      status: AttendanceGraphStatus.working)
                ])),
            AttendanceGraphState.finished(
                graph: AttendanceGraph(
                    date: startWorkTime,
                    status: AttendanceGraphStatus.finished,
                    userId: userUid,
                    keys: [
                      AttendanceGraphKey(
                          mark: startWorkTime,
                          status: AttendanceGraphStatus.working),
                      AttendanceGraphKey(
                          mark: startBreakTime,
                          status: AttendanceGraphStatus.breaked),
                      AttendanceGraphKey(
                          mark: stopBreakTime,
                          status: AttendanceGraphStatus.working),
                      AttendanceGraphKey(
                          mark: finishWorkTime,
                          status: AttendanceGraphStatus.finished)
                    ],
                    comment: comment)),
          ]);
}
