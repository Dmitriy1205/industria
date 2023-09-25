import 'package:cloud_firestore/cloud_firestore.dart';

///Used for toJson() and fromJson() operations over firebase Timestamps
class FirebaseTimestampConverters{
  static DateTime fromTimestamp(dynamic timestamp){
    if(timestamp is int){
      return DateTime.fromMillisecondsSinceEpoch(timestamp);
    }else{
      return timestamp.toDate();
    }
  }
  static Timestamp toTimestamp(DateTime date){
    return Timestamp.fromDate(date);
  }
}