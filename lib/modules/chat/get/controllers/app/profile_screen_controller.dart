import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

import '../../../data/my_data.dart';
import '../../../firebase/fb_firestore_users_controller.dart';
import '../../../firebase/fb_helper.dart';
import '../../../firebase/fb_storage_controller.dart';

class ProfileScreenController extends GetxController with FbHelper {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController().obs;
  final counterMessagingRequests = 0.obs;
  final isLoggingOut = false.obs;

  // XFile? pickedImage;
  // ImagePicker imagePicker = ImagePicker();
  String? url;
  bool isReady = false;

  @override
  void onReady() async {
    await FbFireStoreUsersController().getPeerDetails(myID).then((value) {
      nameController(TextEditingController(text: value!.name));

      url = value.image;
      isReady = true;
      update();
    });
    super.onReady();
  }

  // Future<void> pickImage() async {
  //   XFile? img = await imagePicker.pickImage(
  //     source: ImageSource.gallery,
  //     imageQuality: 50,
  //   );
  //   if (img != null) {
  //     pickedImage = img;
  //     update();
  //   }
  // }
  //
  // Future<void> uploadImage() async {
  //   try {
  //     TaskSnapshot taskSnapshot =
  //         await FbStorageController().upload(file: File(pickedImage!.path));
  //     if (taskSnapshot.state == TaskState.success) {
  //       url = await taskSnapshot.ref.getDownloadURL();
  //       await FbFireStoreUsersController().updateMyImage(url!);
  //       await FbAuthController().currentUser?.updatePhotoURL(url);
  //       update();
  //     }
  //   } on FirebaseException catch (e) {
  //     showSnackbar(message: e.message ?? '', success: false);
  //   } catch (e) {
  //     showSnackbar(message: e.toString(), success: false);
  //   }
  // }
}
