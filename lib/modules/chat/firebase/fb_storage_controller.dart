import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

import '../data/my_data.dart';

class FbStorageController {
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  UploadTask upload({required File file}) {
    return _firebaseStorage.ref('profile/images/$myID').putFile(file);
  }
}
