import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BoldTextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;

  const BoldTextWidget({super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    List<TextSpan> textSpans = [];

    RegExp exp = RegExp(r'<bold>(.*?)<bold>');

    final newLineText = text.replaceAll(r"\\n", "\n");

    List<RegExpMatch> matches = exp.allMatches(newLineText).toList();

    int currentIndex = 0;

    for (RegExpMatch match in matches) {
      String normalText = newLineText.substring(currentIndex, match.start);
      if (normalText.isNotEmpty) {
        textSpans.add(TextSpan(text: normalText, style: style));
      }

      String boldText = match.group(1)!;
      textSpans.add(TextSpan(text: boldText, style: style.copyWith(fontWeight: FontWeight.bold)));

      currentIndex = match.end;
    }

    if (currentIndex < newLineText.length) {
      textSpans.add(TextSpan(
          text: newLineText.substring(currentIndex),
          style: style.copyWith(fontWeight: FontWeight.normal),));
    }

    return SelectableText.rich(TextSpan(children: textSpans), scrollPhysics: NeverScrollableScrollPhysics(),);
  }
}