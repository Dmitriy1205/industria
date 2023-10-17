import 'dart:typed_data';
import 'dart:html' as html;

void downloadFile(List<int> bytes, String fileName) {
  final blob = html.Blob([Uint8List.fromList(bytes)]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..target = '_blank'
    ..download = fileName
    ..click();
  html.Url.revokeObjectUrl(url);
}