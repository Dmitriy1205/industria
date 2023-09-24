import 'package:cloud_firestore/cloud_firestore.dart';

///Used for toJson() and fromJson() operations over firebase Timestamps
class FirebaseTimestampConverters{
  static DateTime fromTimestamp(Timestamp timestamp){
    return timestamp.toDate();
  }
  static Timestamp toTimestamp(DateTime date){
    return Timestamp.fromDate(date);
  }
}