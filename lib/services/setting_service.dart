import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/data/models/user.dart';
import 'package:getx5_ca/routes/app_pages.dart';

class SettingService extends GetxService {
  var currentRoute = AppPages.INITIAL.obs;
  //用户信息
  late User user;

  void changeThemeMode() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
  }
}
