class BaseResponse<T> {
  T? data;
  int? errorCode;
  String? errorMsg;

  BaseResponse({this.data, this.errorCode, this.errorMsg});

  /// 通用的工厂构造函数
  factory BaseResponse.fromJson(Map<String, dynamic> json, {Function(Map<String, dynamic>)? fromJsonT}) {
    return BaseResponse<T>(
      data: fromJsonT != null && json["data"] != null 
          ? fromJsonT(json["data"]) as T
          : json["data"] as T?,
      errorCode: json["errorCode"],
      errorMsg: json["errorMsg"],
    );
  }

  /// 用于转换列表数据
  static List<T> fromJsonList<T>(List<dynamic> jsonList, T Function(Map<String, dynamic>) fromJson) {
    return jsonList.map((item) => fromJson(item as Map<String, dynamic>)).toList();
  }

  /// 转换为JSON格式
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      if(data is Map) {
        _data["data"] = data;
      } else if(data is List) {
        _data["data"] = data;
      } else if(data.toString() == 'null') {
        _data["data"] = null;
      } else {
        try {
          // 尝试调用data的toJson方法
          final dynamic jsonData = (data as dynamic).toJson();
          _data["data"] = jsonData;
        } catch (e) {
          // 如果data没有toJson方法，直接使用data
          _data["data"] = data;
        }
      }
    }
    _data["errorCode"] = errorCode;
    _data["errorMsg"] = errorMsg;
    return _data;
  }
}

