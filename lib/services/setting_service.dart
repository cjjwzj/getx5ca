import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingService extends GetxService {
  var currentRoute = ''.obs;

  void changeThemeMode() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
  }
}
