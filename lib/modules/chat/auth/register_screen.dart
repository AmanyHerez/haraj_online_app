import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../firebase/fb_auth_controller.dart';
import '../get/controllers/auth/register_controller.dart';
import '../model/chat_user.dart';
import '../model/process_response.dart';
import '../widget/show_snackbar.dart';
import '../widget/text_field_widget.dart';


class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Type'),
      ),
      body: Stack(
        children: [
          Form(
            key: controller.formKey,
            child: Padding(
              padding: EdgeInsets.fromLTRB(60, 30, 60, 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Enter new account details'),
                    SizedBox(height: 30),
                    TextFieldWidget(
                      controller: controller.nameController,
                      hintText: 'Full Name',
                    ),
                    SizedBox(height: 30),
                    TextFieldWidget(
                      controller: controller.emailController,
                      hintText: 'Email',
                      isEmail: true,
                    ),
                    SizedBox(height: 30),
                    Obx(
                      () => Column(
                        children: [
                          TextFieldWidget(
                            controller: controller.passwordController,
                            hintText: 'Password',
                            isPassword: true,
                            obscureText: !controller.passwordVisible.value,
                          ),
                          SizedBox(height: 30),
                          TextFieldWidget(
                            controller: controller.confirmPasswordController,
                            hintText: 'Confirm Password',
                            isPassword: true,
                            obscureText: !controller.passwordVisible.value,
                            textInputAction: TextInputAction.done,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Obx(() => Checkbox(
                              value: controller.passwordVisible.value,
                              onChanged: (value) {
                                controller.passwordVisible(
                                    !controller.passwordVisible.value);
                              },
                            )),
                        const Text('show password'),
                      ],
                    ),


                    ElevatedButton.icon(
                      onPressed: () async {
                        if (controller.passwordController.text ==
                            controller.confirmPasswordController.text) {
                          if (controller.formKey.currentState!.validate()) {
                            controller.isRegistering(true);
                            await _performRegister();
                          }
                        } else {
                          showSnackbar(
                            message: 'Passwords do not match! Check again',
                            success: false,
                          );
                        }
                      },
                      label: const Icon(Icons.arrow_right_alt_rounded),
                      icon: Text('create account'.toUpperCase()),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: TextStyle(fontSize: 12),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text(
                            'Sign In.',
                            style: TextStyle(fontSize: 26),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Obx(
          //   () => Visibility(
          //     visible: controller.isRegistering.value,
          //     child: const LoadingWidget(),
          //   ),
          // ),
        ],
      ),
    );
  }

  Future<void> _performRegister() async {
    ProcessResponse response = await FbAuthController().createAccount(chatUser);
    controller.isRegistering(false);
    if (response.success) {
      Get.back();
      showSnackbar(message: response.message, duration: 6);
    } else {
      showSnackbar(message: response.message, success: false);
    }
  }

  ChatUser get chatUser {
    ChatUser chatUser = ChatUser();
    chatUser.name = controller.nameController.text;
    chatUser.email = controller.emailController.text;
    chatUser.password = controller.passwordController.text;

    return chatUser;
  }
}
