import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/network/dto/req/login_req.dart';
import 'package:getx5_ca/others/constance.dart';
import 'package:getx5_ca/services/wan_api_service.dart';
import 'package:getx5_ca/services/prefs_service.dart';

class LoginController extends GetxController {
  final userNameController = TextEditingController(text: 'cjjwzj');
  final passwordController = TextEditingController(text: '1qaz2wsx');

  final WanApiService _apiService = Get.find();

  void login() async {
    if (userNameController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('error', 'username or password is empty');
      return;
    }
    final loginReq = LoginReq(
      username: userNameController.text,
      password: passwordController.text,
    );
    final response = await _apiService.login(loginReq);
    Get.log(response.toString());
  }

  // void login() {
  //   if (userNameController.text.isEmpty || passwordController.text.isEmpty) {
  //     Get.snackbar('error', 'username or password is empty');
  //     return;
  //   }
  //   if (userNameController.text == 'admin' &&
  //       passwordController.text == '123456') {
  //     PrefsService prefsServices = Get.find();
  //     prefsServices.setBool(PrefsKey.IS_LOGIN, true);

  //     Get.toNamed('/home');
  //   } else {
  //     Get.snackbar('error', 'username or password is incorrect');
  //   }
  // }
}
