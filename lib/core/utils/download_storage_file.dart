import 'dart:typed_data';
import 'dart:html' as html;

import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';

Future<void> downloadStorageFile(String ref) async{
  final storageRef = FirebaseStorage.instance.ref(ref);
  try{
    final data = await storageRef.getData();
    final metadata = await storageRef.getMetadata();
    _downloadFile(data!, metadata.name);
  }catch(e){
    print(e.toString());
  }
}
void _downloadFile(List<int> bytes, String fileName) {
  final blob = html.Blob([Uint8List.fromList(bytes)]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: url)
    ..target = '_blank'
    ..download = fileName
    ..click();
  html.Url.revokeObjectUrl(url);
}