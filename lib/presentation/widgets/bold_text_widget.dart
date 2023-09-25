import 'package:flutter/cupertino.dart';

class BoldTextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;

  const BoldTextWidget({super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    List<TextSpan> textSpans = [];

    RegExp exp = RegExp(r'<bold>(.*?)<bold>');

    List<RegExpMatch> matches = exp.allMatches(text).toList();

    int currentIndex = 0;

    for (RegExpMatch match in matches) {
      String normalText = text.substring(currentIndex, match.start);
      if (normalText.isNotEmpty) {
        textSpans.add(TextSpan(text: normalText, style: style));
      }

      String boldText = match.group(1)!;
      textSpans.add(TextSpan(text: boldText, style: style.copyWith(fontWeight: FontWeight.bold)));

      currentIndex = match.end;
    }

    if (currentIndex < text.length) {
      textSpans.add(TextSpan(
          text: text.substring(currentIndex),
          style: style.copyWith(fontWeight: FontWeight.normal),));
    }

    return RichText(text: TextSpan(children: textSpans));
  }
}