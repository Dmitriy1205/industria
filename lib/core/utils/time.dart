import 'dart:ui';

String getTimeAgo(DateTime dateTime, String locale) {
  final now = DateTime.now();
  final difference = now.difference(dateTime);

  String getLocalizedTime(int value, String unit) {
    if (locale == 'de') {
      // German localization
      switch (unit) {
        case 'minute':
          return '$value minute${value == 1 ? '' : 'n'} her';
        case 'hour':
          return '$value stunde${value == 1 ? '' : 'n'} her';
        case 'day':
          return '$value tag${value == 1 ? '' : 'e'} her';
        case 'week':
          return '$value woche${value == 1 ? '' : 'n'} her';
        case 'month':
          return '$value monat${value == 1 ? '' : 'e'} her';
        case 'year':
          return '$value jahr${value == 1 ? '' : 'e'} her';
        default:
          return '';
      }
    } else {
      // Default to English localization
      return '$value $unit${value == 1 ? '' : 's'} ago';
    }
  }

  if (difference.inDays == 0) {
    if (difference.inHours < 1) {
      final minutes = difference.inMinutes;
      return getLocalizedTime(minutes, 'minute');
    } else {
      final hours = difference.inHours;
      return getLocalizedTime(hours, 'hour');
    }
  } else if (difference.inDays == 1) {
    return (locale == 'de') ? 'Gestern' : 'Yesterday';
  } else if (difference.inDays < 7) {
    return getLocalizedTime(difference.inDays, 'day');
  } else if (difference.inDays < 30) {
    final weeks = (difference.inDays / 7).floor();
    return getLocalizedTime(weeks, 'week');
  } else if (difference.inDays < 365) {
    final months = (difference.inDays / 30).floor();
    return getLocalizedTime(months, 'month');
  } else {
    final years = (difference.inDays / 365).floor();
    return getLocalizedTime(years, 'year');
  }
}