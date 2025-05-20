import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/network/dto/rsp/article_list_rsp.dart';
import 'package:getx5_ca/network/dto/rsp/banner_rsp.dart';
import 'package:getx5_ca/presentation/home/first/first_status.dart';
import 'package:getx5_ca/services/wan_api_service.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstPageController extends GetxController {
  final BannerState bannerState = Get.find();
  final ArticleListState articleListState = Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }
}
