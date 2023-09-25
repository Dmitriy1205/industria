import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FirebaseImage extends StatelessWidget {
  final String storageRef;
  const FirebaseImage(this.storageRef, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: _getImageUrl(storageRef),
        builder: (context,state) {
          return !state.hasData ? const SizedBox() : Image.network(state.data!, width: 60, height: 60,);
        });
  }
}
Future<String> _getImageUrl(String imagePath) async {
  Reference ref = FirebaseStorage.instance.ref().child(imagePath);
  print(ref.toString());
  return await ref.getDownloadURL();
}
