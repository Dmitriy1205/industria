import 'dart:ui';

extension DateExtension on DateTime{
  String get formatted => "$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2,'0')}";

  String get formattedTime{
    return'${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  String get pmAm{
    if(hour <= 12){
      return "$hour:${minute.toString().padLeft(2,'0')} AM";
    }else{
      final pmTime = hour - 12;
      return "$pmTime:${minute.toString().padLeft(2,'0')} PM";
    }
  }

  String formattedTextedWithTime(Locale locale) {
    String formattedTime = '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
    String formattedMonth;

    if (locale.languageCode == 'de') {
      List<String> germanMonthNames = [
        'Januar', 'Februar', 'März', 'April', 'Mai', 'Juni',
        'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'
      ];
      formattedMonth = germanMonthNames[month - 1];
    } else {
      switch (month) {
        case 1:
          formattedMonth = 'January';
          break;
        case 2:
          formattedMonth = 'February';
          break;
        case 3:
          formattedMonth = 'March';
          break;
        case 4:
          formattedMonth = 'April';
          break;
        case 5:
          formattedMonth = 'May';
          break;
        case 6:
          formattedMonth = 'June';
          break;
        case 7:
          formattedMonth = 'July';
          break;
        case 8:
          formattedMonth = 'August';
          break;
        case 9:
          formattedMonth = 'September';
          break;
        case 10:
          formattedMonth = 'October';
          break;
        case 11:
          formattedMonth = 'November';
          break;
        case 12:
          formattedMonth = 'December';
          break;
        default:
          formattedMonth = '';
      }
    }

    String formattedDate = '$formattedTime | $formattedMonth $day, $year';
    return formattedDate;
  }

  String formattedTexted(Locale locale) {
    String formattedMonth;

    if (locale.languageCode == 'de') {
      List<String> germanMonthNames = [
        'Januar', 'Februar', 'März', 'April', 'Mai', 'Juni',
        'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'
      ];
      formattedMonth = germanMonthNames[month - 1];
    } else {
      switch (month) {
        case 1:
          formattedMonth = 'January';
          break;
        case 2:
          formattedMonth = 'February';
          break;
        case 3:
          formattedMonth = 'March';
          break;
        case 4:
          formattedMonth = 'April';
          break;
        case 5:
          formattedMonth = 'May';
          break;
        case 6:
          formattedMonth = 'June';
          break;
        case 7:
          formattedMonth = 'July';
          break;
        case 8:
          formattedMonth = 'August';
          break;
        case 9:
          formattedMonth = 'September';
          break;
        case 10:
          formattedMonth = 'October';
          break;
        case 11:
          formattedMonth = 'November';
          break;
        case 12:
          formattedMonth = 'December';
          break;
        default:
          formattedMonth = '';
      }
    }

    String formattedDate = '$formattedMonth $day, $year';
    return formattedDate;
  }
}