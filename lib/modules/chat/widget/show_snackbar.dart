import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


void showSnackbar({
  String? title,
  required String message,
  bool success = true,
  int duration = 3,
}) {
  Get.showSnackbar(
    GetSnackBar(
      title: title,
      backgroundColor: success ? Colors.green : Colors.red,
      message: message,
      duration: Duration(seconds: duration),
    ),
  );
}
