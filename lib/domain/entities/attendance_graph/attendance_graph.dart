import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:industria/core/extensions/duration.dart';
import 'package:industria/core/utils/firebase_timestamp_converters.dart';

import '../../../core/enums/attendance_graph_status.dart';
import '../attendance_graph_key/attendance_graph_key.dart';

part 'attendance_graph.freezed.dart';

part 'attendance_graph.g.dart';

@freezed
class AttendanceGraph with _$AttendanceGraph {
  const AttendanceGraph._();

  double? get pause {
    List<DateTime> fromInterval = [];
    List<DateTime> toInterval = [];
    for (int i = 0; i < keys.length; i++) {
      if (keys[i].status == AttendanceGraphStatus.breaked) {
        fromInterval.add(keys[i].mark);
        if(i + 1 >= keys.length){
          toInterval.add(DateTime.now());
        }else{
          toInterval.add(keys[i+1].mark);
        }
      }
    }
    if(fromInterval.isEmpty){
      return null;
    }
    double result = 0.0;
    for(int i = 0; i < fromInterval.length; i ++){
      result += toInterval[i].difference(fromInterval[i]).cleanHours;
    }
    return result;
  }

  DateTime? get start => keys.where((e) => e.status == AttendanceGraphStatus.working).firstOrNull?.mark;

  DateTime? get finish => keys.where((e) => e.status == AttendanceGraphStatus.finished).firstOrNull?.mark;

  double? get totalHours => finish == null ? null : finish!.difference(start!).cleanHours - pause!;

  const factory AttendanceGraph(
      {@JsonKey(
          fromJson: FirebaseTimestampConverters.fromTimestamp,
          toJson: FirebaseTimestampConverters.toTimestamp)
      required DateTime date,
      @JsonKey(
          fromJson: AttendanceGraphStatus.fromJson,
          toJson: AttendanceGraphStatus.toJson)
      required AttendanceGraphStatus status,
      required String userId,
        @Default(0.0) double totalPause,
      @Default([]) List<AttendanceGraphKey> keys,
      @Default("") String comment}) = _AttendanceGraph;

  factory AttendanceGraph.fromJson(Map<String, Object?> json) =>
      _$AttendanceGraphFromJson(json);
}
