import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../firebase/fb_auth_controller.dart';
import '../get/controllers/auth/login_controller.dart';
import '../model/process_response.dart';
import '../routes/routes_manager.dart';
import '../widget/show_snackbar.dart';
import '../widget/text_field_widget.dart';


class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Form(
                key: controller.formKey,
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.fromLTRB(60, 30, 60, 30),
                  children: [
                    Text(
                      'Type',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 80),
                    ),
                    SizedBox(height: 80),
                    TextFieldWidget(
                      controller: controller.emailController,
                      hintText: 'Your Email',
                      isEmail: true,
                    ),
                    SizedBox(height: 40),
                    Obx(() => TextFieldWidget(
                          controller: controller.passwordController,
                          hintText: 'Your Password',
                          isPassword: true,
                          textInputAction: TextInputAction.done,
                          obscureText: !controller.passwordVisible.value,
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.passwordVisible(
                                  !controller.passwordVisible.value);
                            },
                            icon: controller.passwordVisible.value
                                ? const Icon(
                                    Icons.visibility,
                                    color: Colors.green,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                          ),
                        )),
                    SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () async {
                        if (controller.formKey.currentState!.validate()) {
                          controller.isLogging(true);
                          await _performLogin();
                        }
                      },
                      child: Text('sign in'.toUpperCase()),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            indent: Get.width / 5,
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: const Text('OR'),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.white,
                            endIndent: Get.width / 5,
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 50),
                    // ElevatedButton.icon(
                    //   onPressed: () async {
                    //     controller.isLogging(true);
                    //     await _performLoginWithFacebook();
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(15.r),
                    //     ),
                    //   ),
                    //   icon: Image.asset(
                    //     'assets/images/facebook.png',
                    //     height: 40.h,
                    //     width: 70.w,
                    //   ),
                    //   label: const Text('Continue with Facebook'),
                    // ),
                    // SizedBox(height: 20.h),
                    // ElevatedButton.icon(
                    //   onPressed: () async {
                    //     controller.isLogging(true);
                    //     await _performLoginWithGoogle();
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: ColorsManager.pink,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(15.r),
                    //     ),
                    //   ),
                    //   icon: Image.asset(
                    //     'assets/images/google.png',
                    //     height: 40.h,
                    //     width: 70.w,
                    //   ),
                    //   label: const Text('Continue with Google     '),
                    // ),
                    // SizedBox(height: 30.h),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     TextButton(
                    //       onPressed: () {
                    //         Get.toNamed(RoutesManager.forgetPasswordScreen);
                    //       },
                    //       child: Text(
                    //         'Forget Password?',
                    //         style: TextStyle(fontSize: 24.sp),
                    //       ),
                    //     ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(RoutesManager.registerScreen);
                          },
                          child: Text(
                            'Create Account'.toUpperCase(),
                            style: TextStyle(fontSize: 26),
                          ),
                        ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            // Obx(
            //   () => Visibility(
            //     visible: controller.isLogging.value,
            //     child: const LoadingWidget(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Future<void> _performLogin() async {
    ProcessResponse response = await FbAuthController().signInWithEmail(
        email: controller.emailController.text,
        password: controller.passwordController.text);
    controller.isLogging(false);
    showSnackbar(message: response.message, success: response.success);
    if (response.success) {
      Get.offAllNamed(RoutesManager.chatScreen);
    }
  }

  // Future<void> _performLoginWithGoogle() async {
  //   final response = await FbAuthController().signInWithGoogle();
  //   controller.isLogging(false);
  //   if (response != null) {
  //     showSnackbar(
  //       message: response.message,
  //       success: response.success,
  //     );
  //     if (response.success) {
  //       Get.offAllNamed(RoutesManager.homeScreen);
  //     }
  //   }
  // }

  // Future<void> _performLoginWithFacebook() async {
  //   final response = await FbAuthController().signInWithFacebook();
  //   controller.isLogging(false);
  //   if (response != null) {
  //     showSnackbar(
  //       message: response.message,
  //       success: response.success,
  //     );
  //     if (response.success) {
  //       Get.offAllNamed(RoutesManager.homeScreen);
  //     }
  //   }
  // }
}
