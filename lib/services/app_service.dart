import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/data/models/user.dart';
import 'package:getx5_ca/others/constance.dart';
import 'package:getx5_ca/routes/app_pages.dart';
import 'package:getx5_ca/services/prefs_service.dart';

class AppService extends GetxService {
  final PrefsService _prefs = Get.find();

  Future<User?> getUser() async {
    final userJson = await _prefs.getString(PrefsKey.USER_KEY);
    if (userJson != null) {
      return User.fromJson(jsonDecode(userJson));
    }
    return null;
  }

  void changeThemeMode() {
    Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
  }
}
