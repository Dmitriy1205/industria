extension DateExtension on DateTime{
  String get formatted => "$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2,'0')}";
  String get formattedTextedWithTime{
    String formattedTime = '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
    String formattedMonth;
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
    String formattedDate = '$formattedTime | $formattedMonth ${day}, ${year}';
    return formattedDate;
  }
}