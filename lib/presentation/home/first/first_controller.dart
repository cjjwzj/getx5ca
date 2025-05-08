import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/services/wan_api_service.dart';

class FirstPageController extends GetxController {
  var carouselController = CarouselController();
  final WanApiService _wanApiService = Get.find();


   var banners = [].obs;


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    queryBanner();
  }

  void queryBanner() async {
    var resp = await _wanApiService.getBanner();
    banners.value = resp.data!;
  }
}
