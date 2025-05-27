import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/network/dto/req/login_req.dart';
import 'package:getx5_ca/services/setting_service.dart';
import 'package:getx5_ca/services/wan_api_service.dart';

class LoginController extends GetxController with StateMixin {
  final userNameController = TextEditingController(text: 'cjjwzj');
  final passwordController = TextEditingController(text: '1qaz2wsx');

  final WanApiService _apiService = Get.find();

  @override
  void onInit() {
    super.onInit();
    setSuccess(null);
  }

  void doLogin() {
    futurize(login);
  }

  Future login() async {
    /// TODO: 转移到表单规则中
    if (userNameController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('error', 'username or password is empty');
      return;
    }
    final loginReq = LoginReq(
      username: userNameController.text,
      password: passwordController.text,
    );

    // return _apiService.login(loginReq);
    final response = await _apiService.login(loginReq);
    if (response.isSuccess) {
      Get.find<SettingService>().user = response.data!.transformToUser();
      Get.toNamed('/home/first');
    } else {
      Get.snackbar('error', response.errorMsg);
    }

    return response;
  }
}
