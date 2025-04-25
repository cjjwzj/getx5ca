import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

/// 响应拦截器 - 处理响应后的逻辑
class MyResponseInterceptor {
  /// 响应修饰器 - 在接收响应后修改响应
  /// 可以处理通用错误、刷新令牌等
  Future<dynamic> responseModifier(Request request, Response response) async {
    // 打印响应信息（调试用）
    if (kDebugMode) {
      _printResponseInfo(response, request.url.toString());
    }

    // 处理刷新令牌（在401响应时）
    // 如果接收到401错误，可以尝试刷新令牌并重试请求
    // 例如：
    // if (response.statusCode == 401) {
    //   final authService = Get.find<AuthService>();
    //   final refreshSuccess = await authService.refreshToken();
    //   if (refreshSuccess) {
    //     // 重新添加令牌到请求
    //     request.headers['Authorization'] = 'Bearer ${authService.token}';
    //     // 重试请求
    //     return await GetHttpClient().execute(
    //       request.method,
    //       request.url,
    //       body: request.bodyBytes,
    //       headers: request.headers,
    //       contentType: request.contentType,
    //     );
    //   }
    // }

    return response;
  }

  /// 打印响应信息（调试用）
  void _printResponseInfo(Response response, String url) {
    Get.log(
        '┌───────────────────────────────────────────────────────────────────────────────');
    Get.log('│ 响应: $url');
    Get.log('│ 状态码: ${response.statusCode} ${response.statusText}');
    Get.log('│ 响应头: ${response.headers}');
    Get.log('│ 响应体: ${response.bodyString}');
    Get.log(
        '└───────────────────────────────────────────────────────────────────────────────');
  }
}

/// 是否处于调试模式
const bool kDebugMode = bool.fromEnvironment('dart.vm.product') == false;
