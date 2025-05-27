import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:getx5_ca/network/dto/rsp/article_list_rsp.dart';
import 'package:getx5_ca/network/dto/rsp/banner_rsp.dart';
import 'package:getx5_ca/services/wan_api_service.dart';
import 'package:url_launcher/url_launcher.dart';

//轮播图
class BannerState extends StateController<List<BannerRsp>> {
  final WanApiService _wanApiService = Get.find();
  var _currentPage = 0;
  Timer? _timer;
  PageController pageViewController = PageController(viewportFraction: 0.8);

  @override
  void onReady() {
    super.onReady();
    futurize(queryBanner);
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

  Future<List<BannerRsp>> queryBanner() async {
    var resp = await _wanApiService.getBanner();
    if (resp.data != null && resp.data!.isNotEmpty) {
      setSuccess(resp.data!);
      _currentPage = 0; // 重置当前页面索引，如果需要从第一页开始
      // 开始轮播
      _loopBanner();
    }
    return resp.data ?? [];
  }

  void _loopBanner() {
    // 如果之前有定时器，先取消，避免重复创建
    _timer?.cancel();
    // 确保 banners 不为空
    if (value.isNotEmpty) return;

    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      // 增加检查 pageController.hasClients
      if (pageViewController.hasClients) {
        _currentPage = (_currentPage + 1) % value.length;
        pageViewController.animateToPage(_currentPage,
            duration: const Duration(milliseconds: 200), curve: Curves.linear);
      }
    });
  }

  @override
  void onClose() {
    _timer?.cancel(); // 取消定时器
    pageViewController.dispose(); // 确保 PageController 被释放
    super.onClose();
  }
}

//文章列表
class ArticleListState extends StateController<ArticleListRsp> {
  final WanApiService _wanApiService = Get.find();
  final int _pageSize = 10;
  final _currentPage = 0;

  @override
  onReady() {
    super.onReady();
    futurize(queryArticleList);
  }

  Future<ArticleListRsp> queryArticleList() async {
    var resp = await _wanApiService.getArticleList(_currentPage, _pageSize);
    Get.log("resp: $resp");
    if (resp.data != null) {
      setSuccess(resp.data!);
    }
    return resp.data ?? ArticleListRsp.zero();
  }


}
