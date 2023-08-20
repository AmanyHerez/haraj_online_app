import 'package:get/get.dart';

import '../../controllers/app/profile_screen_controller.dart';


class ProfileScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileScreenController());
  }
}
