/// API响应的通用实体类
/// 
/// 使用泛型T表示data字段的类型，可以根据不同的API响应灵活使用
class ApiResponse<T> {
  final T? data;
  final int errorCode;
  final String errorMsg;

  const ApiResponse({
    this.data,
    required this.errorCode,
    required this.errorMsg,
  });

  // 从JSON映射到实体类的工厂构造函数
  factory ApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic> json) fromJsonT,
  ) {
    return ApiResponse<T>(
      data: json['data'] != null ? fromJsonT(json['data']) : null,
      errorCode: json['errorCode'] as int,
      errorMsg: json['errorMsg'] as String,
    );
  }

  // 实体类转换为JSON的方法
  Map<String, dynamic> toJson(Map<String, dynamic> Function(T) toJsonT) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['errorCode'] = errorCode;
    data['errorMsg'] = errorMsg;
    if (this.data != null) {
      data['data'] = toJsonT(this.data as T);
    }
    return data;
  }

  // 创建成功响应的便捷方法
  static ApiResponse<T> success<T>(T data) {
    return ApiResponse<T>(
      data: data,
      errorCode: 0,
      errorMsg: '',
    );
  }

  // 创建错误响应的便捷方法
  static ApiResponse<T> error<T>({required int code, required String message, T? data}) {
    return ApiResponse<T>(
      data: data,
      errorCode: code,
      errorMsg: message,
    );
  }

  // 判断响应是否成功的方法
  bool get isSuccess => errorCode == 0;

  // 复制并修改当前实例的方法
  ApiResponse<T> copyWith({
    T? data,
    int? errorCode,
    String? errorMsg,
  }) {
    return ApiResponse<T>(
      data: data ?? this.data,
      errorCode: errorCode ?? this.errorCode,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }
} 