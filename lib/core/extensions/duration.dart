extension DurationToHoursExtension on Duration{
  num get cleanHours => inHours + (inMinutes % 60) / 60;
}