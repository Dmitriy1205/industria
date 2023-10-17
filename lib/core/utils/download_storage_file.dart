import 'package:firebase_storage/firebase_storage.dart';

import 'download_file.dart';

Future<void> downloadStorageFile(String ref) async{
  final storageRef = FirebaseStorage.instance.ref(ref);
  try{
    final data = await storageRef.getData();
    final metadata = await storageRef.getMetadata();
    downloadFile(data!, metadata.name);
  }catch(e){
    print(e.toString());
  }
}