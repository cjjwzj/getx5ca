import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/network/dto/rsp/banner_rsp.dart';
import 'package:getx5_ca/services/wan_api_service.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstPageController extends GetxController with StateMixin {
  final WanApiService _wanApiService = Get.find();
  Timer? _timer;

  var banners = <BannerRsp>[].obs;

  int _currentPage = 0;

  PageController pageViewController =
      PageController(viewportFraction: 0.8); // 用于跟踪当前页面
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    futurize(loadAllDatas);
  }

  @override
  void onClose() {
    _timer?.cancel(); // 取消定时器
    pageViewController.dispose(); // 确保 PageController 被释放
    super.onClose();
  }

  Future loadAllDatas() async {
    return Future.wait([
      queryBanner(),
    ]);
  }

  Future queryBanner() async {
    var resp = await _wanApiService.getBanner();
    if (resp.data != null && resp.data!.isNotEmpty) {
      banners.value = resp.data!;
      _currentPage = 0; // 重置当前页面索引，如果需要从第一页开始
      // 开始轮播
      _loopBanner();
    }
    return resp;
  }

  void _loopBanner() {
    // 如果之前有定时器，先取消，避免重复创建
    _timer?.cancel();
    // 确保 banners 不为空
    if (banners.isEmpty) return;

    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      // 增加检查 pageController.hasClients
      if (pageViewController.hasClients && banners.isNotEmpty) {
        _currentPage = (_currentPage + 1) % banners.length;
        pageViewController.animateToPage(_currentPage,
            duration: const Duration(milliseconds: 200), curve: Curves.linear);
      }
    });
  }

  void onPageChanged(int index) {
    _currentPage = index;
  }

  void onBannerTap(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      Get.snackbar('Error', 'Could not launch $url');
    }
  }
}
