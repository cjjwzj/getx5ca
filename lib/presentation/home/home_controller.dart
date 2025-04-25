import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/services/setting_service.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final tabNames = [
    '首页',
    '鸿蒙开发',
    '学习路线',
    '广场',
    '导航',
    '教程',
    '问答',
    '项目',
    '公众号',
    '工具',
    '收藏',
  ];
  late TabController tabController;

  @override
  void onInit() {
    super.onInit();

    tabController = TabController(length: tabNames.length, vsync: this);

    listenRouteChange();
  }

  void onTabChanged(int value) {
    switch (value) {
      case 0:
        Get.offNamed('/home/first');
        break;
      case 1:
        Get.offNamed('/home/harmony');
        break;
    }
  }

  void listenRouteChange() {
    var currentRoute = Get.find<SettingService>().currentRoute;
    ever(currentRoute, (value) {
      if (value.contains('/home/first')) {
        tabController.animateTo(0);
      } else if (value.contains('/home/harmony')) {
        tabController.animateTo(1);
      }
    });
  }
}
