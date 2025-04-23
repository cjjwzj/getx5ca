import 'package:get/get.dart';
import 'package:getx5_ca/network/dto/base_response.dart';
import 'package:getx5_ca/network/dto/req/login_req.dart';
import 'package:getx5_ca/network/interceptors/my_request_interceptor.dart';
import 'package:getx5_ca/network/interceptors/my_response_interceptor.dart';

/// API客户端 - 基于GetX的Http实现，用于网络请求
class WanApiService extends GetConnect implements GetxService {
  WanApiService();

  @override
  void onInit() {
    // httpClient.defaultContentType = 'application/x-www-form-urlencoded';
    httpClient.baseUrl = 'https://www.wanandroid.com';
    httpClient.timeout = const Duration(seconds: 30);

    // 添加请求和响应拦截器
    httpClient.addRequestModifier(MyRequestInterceptor().requestModifier);
    httpClient.addResponseModifier(MyResponseInterceptor().responseModifier);

    // 设置默认的解码器
    httpClient.defaultDecoder = (dynamic data) {
      // 处理响应数据，将其转换为BaseResponse
      if (data is Map<String, dynamic>) {
        return BaseResponse<dynamic>(
          data: data['data'],
          errorCode: data['errorCode'],
          errorMsg: data['errorMsg'],
        );
      }
      return data;
    };
    super.onInit();
  }

  /// 登录
  /// 返回一个包含BaseResponse的Response对象
  Future<Response> login(LoginReq req) {
    // 直接使用FormData确保数据以表单格式发送，而非JSON格式
    final formData = FormData({
      'username': req.username,
      'password': req.password,
    });
    
    return post(
      '/user/login',
      formData,
    );
  }


}
