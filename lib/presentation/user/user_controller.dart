import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/services/setting_service.dart';

class UserController extends GetxController  {
  var themeModeIcon = (Get.isDarkMode ? Icons.dark_mode : Icons.light_mode).obs;

  @override
  void onInit() {
    super.onInit();
  }

  void changeThemeMode() {
    Get.find<SettingService>().changeThemeMode();
    themeModeIcon.value = themeModeIcon.value == Icons.light_mode
        ? Icons.dark_mode
        : Icons.light_mode;
  }
}
