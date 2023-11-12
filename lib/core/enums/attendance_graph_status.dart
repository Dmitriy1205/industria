import 'dart:ui';

enum AttendanceGraphStatus{
  notStarted("notStarted", Color(0xFFEDEDED)),
  working("working", Color(0xFF2976B6)),
  breaked("breaked", Color(0xFFFFC200)),
  finished("finished", Color(0xFFEDEDED));

  final String text;
  final Color color;

  static AttendanceGraphStatus fromJson(String val){
    return AttendanceGraphStatus.values.firstWhere((e) => e.text == val, orElse: () => AttendanceGraphStatus.notStarted);
  }
  static String toJson(AttendanceGraphStatus val){
    return val.text;
  }
  const AttendanceGraphStatus(this.text, this.color);
}