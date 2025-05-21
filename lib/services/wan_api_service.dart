import 'package:get/get.dart';
import 'package:getx5_ca/network/dto/rsp/banner_rsp.dart';
import 'package:getx5_ca/network/dto/wan_api_base_rsp.dart';
import 'package:getx5_ca/network/dto/req/login_req.dart';
import 'package:getx5_ca/network/dto/rsp/login_rsp.dart';
import 'package:getx5_ca/network/interceptors/my_request_interceptor.dart';
import 'package:getx5_ca/network/interceptors/my_response_interceptor.dart';
import 'package:getx5_ca/network/dto/rsp/article_rsp.dart';
import 'package:getx5_ca/network/dto/rsp/article_list_rsp.dart';

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
      // 注意：这个默认解码器只能处理到WanApiBaseRsp<dynamic>级别
      // 具体的泛型类型转换需要在各个API方法中使用decoder参数完成
      if (data is Map<String, dynamic>) {
        return WanApiBaseRsp<dynamic>(
          data: data['data'],
          errorCode: data['errorCode'] as int,
          errorMsg: data['errorMsg'] as String,
        );
      }
      return data;
    };
    super.onInit();
  }

  /// 通用的解码方法，用于将WanApiBaseRsp<dynamic>转换为WanApiBaseRsp<T>
  ///
  /// @param response 原始响应对象，包含WanApiBaseRsp<dynamic>
  /// @param fromJson 将dynamic数据转换为T类型的方法
  /// @return 包含具体类型T的响应对象
  WanApiBaseRsp<T> _decodeMapRsp<T>(
      Response response, T Function(Map<String, dynamic>) fromJson) {
    if (response.body is WanApiBaseRsp) {
      // 获取默认解码器解析后的WanApiBaseRsp<dynamic>
      final wanApiBaseRsp = response.body as WanApiBaseRsp;
      // 如果data为null，直接返回带有空data的WanApiBaseRsp<T>
      if (wanApiBaseRsp.data == null) {
        return WanApiBaseRsp<T>(
          data: null,
          errorCode: wanApiBaseRsp.errorCode,
          errorMsg: wanApiBaseRsp.errorMsg,
        );
      }
      // 如果data不为null，且为Map<String, dynamic>类型，则转换为T类型
      if (wanApiBaseRsp.data is Map<String, dynamic>) {
        return WanApiBaseRsp<T>(
          data: fromJson(wanApiBaseRsp.data as Map<String, dynamic>),
          errorCode: wanApiBaseRsp.errorCode,
          errorMsg: wanApiBaseRsp.errorMsg,
        );
      }
    }
    // 如果响应体不是预期的WanApiBaseRsp类型，返回错误
    return WanApiBaseRsp.error<T>(
      errorCode: -1,
      errorMsg: '响应数据格式错误',
    );
  }

  /// 通用的解码方法，用于将WanApiBaseRsp<dynamic>转换为WanApiBaseRsp<T>
  ///
  /// @param response 原始响应对象，包含WanApiBaseRsp<dynamic>
  /// @param fromJson 将dynamic数据转换为T类型的方法
  /// @return 包含具体类型T的响应对象
  WanApiBaseRsp<List<T>> _decodeListRsp<T>(
      Response response, T Function(Map<String, dynamic>) fromJson) {
    if (response.body is WanApiBaseRsp) {
      // 获取默认解码器解析后的WanApiBaseRsp<dynamic>
      final wanApiBaseRsp = response.body as WanApiBaseRsp;
      // 如果data为null，直接返回带有空data的WanApiBaseRsp<T>
      if (wanApiBaseRsp.data == null) {
        return WanApiBaseRsp<List<T>>(
          data: null,
          errorCode: wanApiBaseRsp.errorCode,
          errorMsg: wanApiBaseRsp.errorMsg,
        );
      }

      // 新增对 List 类型的处理
      if (wanApiBaseRsp.data is List) {
        final list = (wanApiBaseRsp.data as List)
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList();
        return WanApiBaseRsp<List<T>>(
          data: list,
          errorCode: wanApiBaseRsp.errorCode,
          errorMsg: wanApiBaseRsp.errorMsg,
        );
      }
    }
    // 如果响应体不是预期的WanApiBaseRsp类型，返回错误
    return WanApiBaseRsp.error(
      errorCode: -1,
      errorMsg: '响应数据格式错误',
    );
  }

  /// 登录
  /// 返回一个包含泛型T(这里是LoginRes)的WanApiBaseRsp对象
  Future<WanApiBaseRsp<LoginRsp>> login(LoginReq req) async {
    // 直接使用FormData确保数据以表单格式发送，而非JSON格式
    final formData = FormData({
      'username': req.username,
      'password': req.password,
    });

    final response = await post('/user/login', formData);
    return _decodeMapRsp<LoginRsp>(response, LoginRsp.fromJson);
  }

  /// 获取Banner
  Future<WanApiBaseRsp<List<BannerRsp>>> getBanner() async {
    final response = await get('/banner/json');
    return _decodeListRsp<BannerRsp>(response, BannerRsp.fromJson);
  }

  /// 获取首页文章列表
  ///
  /// @param currentPage 页码，从0开始
  /// @return 返回一个包含文章列表和分页信息的WanApiBaseRsp对象
  Future<WanApiBaseRsp<ArticleListRsp>> getArticleList(
      int currentPage, int pageSize) async {
    final queryParams = {'page_size': pageSize.toString()};
    final response =
        await get('/article/list/$currentPage/json', query: queryParams);
    return _decodeMapRsp<ArticleListRsp>(response, ArticleListRsp.fromJson);
  }
}
