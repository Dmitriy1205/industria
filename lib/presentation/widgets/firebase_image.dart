import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class FirebaseImage extends StatelessWidget {
  final String storageRef;
  const FirebaseImage(this.storageRef, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
        future: FirebaseStorageManager.getDownloadUrl(storageRef),
        builder: (context,state) {
          return !state.hasData || state.data == null ? const SizedBox() : Image.network(state.data!, width: 60, height: 60,);
        });
  }
}

class FirebaseStorageManager {
  static final FirebaseStorage _storage = FirebaseStorage.instance;
  static final Map<String, String?> _urlCache = {};

  static Future<String?> getDownloadUrl(String refName) async {
    if (_urlCache.containsKey(refName)) {
      if (_urlCache[refName] == null) {
        return null;
      }
      return _urlCache[refName]!;
    } else {
      try {
        String url = await _storage.ref(refName).getDownloadURL();
        _urlCache[refName] = url;
        return url;
      } catch (e) {
        _urlCache[refName] = null;
        return null;
      }
    }
  }
}
