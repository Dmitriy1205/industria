import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:styled_text/styled_text.dart';

class BoldTextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool optimized;

  const BoldTextWidget({super.key, required this.text, required this.style, this.optimized = true});

  @override
  Widget build(BuildContext context) {// Added regex for <h> tags

    final newLineText = text.replaceAll(r"\\n", "\n");

    if(!optimized){
      return StyledText(text: newLineText, style: style, tags: {
        'bold': StyledTextTag(style: const TextStyle(fontWeight: FontWeight.bold)),
        'h': StyledTextTag(style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
      },);
    }
    final parts = _splitTextBySpacing(newLineText);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: parts.map((e) => StyledText(text: e, style: style, tags: {
        'bold': StyledTextTag(style: const TextStyle(fontWeight: FontWeight.bold)),
        'h': StyledTextTag(style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
      },)).toList()
    );
  }
}

List<String> _splitTextBySpacing(String text) {
  List<String> lines = text.split('\n');
  print(lines);
  List<String> result = [];

  for (String line in lines) {
    if (line.trim() != '') {
      result.add(line.trim());
    }
  }

  return result;
}

List<String> _divideTextByTags(String input) {
  List<String> result = [];
  RegExp exp = RegExp(r'<(\w+)>(.*?)<\/\w+>');

  int lastIndex = 0;
  for (Match match in exp.allMatches(input)) {
    if (match.start > lastIndex) {
      result.add(input.substring(lastIndex, match.start));
    }
    result.add(match.group(0)!);
    lastIndex = match.end;
  }

  if (lastIndex < input.length) {
    result.add(input.substring(lastIndex));
  }

  return result;
}