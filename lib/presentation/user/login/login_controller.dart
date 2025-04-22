import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/others/constance.dart';
import 'package:getx5_ca/services/prefs_services.dart';

class LoginController extends GetxController {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    if (userNameController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('error', 'username or password is empty');
      return;
    }
    if (userNameController.text == 'admin' &&
        passwordController.text == '123456') {
      PrefsServices prefsServices = Get.find();
      prefsServices.setBool(PrefsKey.IS_LOGIN, true);

      Get.toNamed('/home');
    } else {
      Get.snackbar('error', 'username or password is incorrect');
    }
  }
}
