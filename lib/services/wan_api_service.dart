import 'package:get/get.dart';
import 'package:getx5_ca/network/dto/api_response.dart';
import 'package:getx5_ca/network/dto/req/login_req.dart';
import 'package:getx5_ca/network/dto/res/login_res.dart';
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
      // 注意：这个默认解码器只能处理到ApiResponse<dynamic>级别
      // 具体的泛型类型转换需要在各个API方法中使用decoder参数完成
      if (data is Map<String, dynamic>) {
        return ApiResponse<dynamic>(
          data: data['data'],
          errorCode: data['errorCode'] as int,
          errorMsg: data['errorMsg'] as String,
        );
      }
      return data;
    };
    super.onInit();
  }

  /// 通用的解码方法，用于将ApiResponse<dynamic>转换为ApiResponse<T>
  /// 
  /// @param response 原始响应对象，包含ApiResponse<dynamic>
  /// @param fromJson 将dynamic数据转换为T类型的方法
  /// @return 包含具体类型T的响应对象
  ApiResponse<T> _decodeResponse<T>(Response response, T Function(Map<String, dynamic>) fromJson) {
    if (response.body is ApiResponse) {
      // 获取默认解码器解析后的ApiResponse<dynamic>
      final apiResponse = response.body as ApiResponse<dynamic>;
      // 如果data为null，直接返回带有空data的ApiResponse<T>
      if (apiResponse.data == null) {
        return ApiResponse<T>(
          data: null,
          errorCode: apiResponse.errorCode,
          errorMsg: apiResponse.errorMsg,
        );
      }
      // 如果data不为null，且为Map<String, dynamic>类型，则转换为T类型
      if (apiResponse.data is Map<String, dynamic>) {
        return ApiResponse<T>(
          data: fromJson(apiResponse.data as Map<String, dynamic>),
          errorCode: apiResponse.errorCode,
          errorMsg: apiResponse.errorMsg,
        );
      }
    }
    // 如果响应体不是预期的ApiResponse类型，返回错误
    return ApiResponse.error<T>(
      code: -1,
      message: '响应数据格式错误',
    );
  }

  /// 登录
  /// 返回一个包含泛型T(这里是LoginRes)的ApiResponse对象
  Future<ApiResponse<LoginRes>> login(LoginReq req) async {
    // 直接使用FormData确保数据以表单格式发送，而非JSON格式
    final formData = FormData({
      'username': req.username,
      'password': req.password,
    });

    final response = await post('/user/login', formData);
    return _decodeResponse<LoginRes>(response, LoginRes.fromJson);
  }

}
