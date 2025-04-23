import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

/// 请求拦截器 - 处理请求前的逻辑
class MyRequestInterceptor {
  /// 请求修饰器 - 在发送请求前修改请求
  /// 可以添加通用请求头、认证令牌等
  Future<Request> requestModifier(Request request) async {
    // 添加请求来源
    // request.headers['User-Agent'] = 'Flutter GetX App';

    // 添加时间戳
    request.headers['Request-Time'] = DateTime.now().toIso8601String();

    // 添加认证令牌（如果存在）
    // 从本地存储或其他服务获取Token
    // 例如：
    // final authService = Get.find<AuthService>();
    // if (authService.hasToken) {
    //   request.headers['Authorization'] = 'Bearer ${authService.token}';
    // }

    // 打印请求信息（调试用）
    if (kDebugMode) {
      _printRequestInfo(request);
    }

    return request;
  }

  /// 打印请求信息（调试用）
  void _printRequestInfo(Request request) async {
    Get.log(
        '┌───────────────────────────────────────────────────────────────────────────────');
    Get.log('│ 请求: ${request.method.toUpperCase()} ${request.url.toString()}');
    Get.log('│ 请求头: ${request.headers}');

    // 请求体处理 - 由于bodyBytes是Stream，需要特殊处理
    Get.log('│ 请求体: ${await request.bodyBytes.bytesToString()}');

    Get.log(
        '└───────────────────────────────────────────────────────────────────────────────');
  }
}

/// 是否处于调试模式
const bool kDebugMode = bool.fromEnvironment('dart.vm.product') == false;
