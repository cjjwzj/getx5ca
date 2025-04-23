
class LoginRes {
  Data? data;
  int? errorCode;
  String? errorMsg;

  LoginRes({this.data, this.errorCode, this.errorMsg});

  LoginRes.fromJson(Map<String, dynamic> json) {
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
    if(json["errorCode"] is int) {
      errorCode = json["errorCode"];
    }
    if(json["errorMsg"] is String) {
      errorMsg = json["errorMsg"];
    }
  }

  static List<LoginRes> fromList(List<Map<String, dynamic>> list) {
    return list.map(LoginRes.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    _data["errorCode"] = errorCode;
    _data["errorMsg"] = errorMsg;
    return _data;
  }
}

class Data {
  bool? admin;
  List<dynamic>? chapterTops;
  int? coinCount;
  List<int>? collectIds;
  String? email;
  String? icon;
  int? id;
  String? nickname;
  String? password;
  String? publicName;
  String? token;
  int? type;
  String? username;

  Data({this.admin, this.chapterTops, this.coinCount, this.collectIds, this.email, this.icon, this.id, this.nickname, this.password, this.publicName, this.token, this.type, this.username});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["admin"] is bool) {
      admin = json["admin"];
    }
    if(json["chapterTops"] is List) {
      chapterTops = json["chapterTops"] ?? [];
    }
    if(json["coinCount"] is int) {
      coinCount = json["coinCount"];
    }
    if(json["collectIds"] is List) {
      collectIds = json["collectIds"] == null ? null : List<int>.from(json["collectIds"]);
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["icon"] is String) {
      icon = json["icon"];
    }
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["nickname"] is String) {
      nickname = json["nickname"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["publicName"] is String) {
      publicName = json["publicName"];
    }
    if(json["token"] is String) {
      token = json["token"];
    }
    if(json["type"] is int) {
      type = json["type"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
  }

  static List<Data> fromList(List<Map<String, dynamic>> list) {
    return list.map(Data.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["admin"] = admin;
    if(chapterTops != null) {
      _data["chapterTops"] = chapterTops;
    }
    _data["coinCount"] = coinCount;
    if(collectIds != null) {
      _data["collectIds"] = collectIds;
    }
    _data["email"] = email;
    _data["icon"] = icon;
    _data["id"] = id;
    _data["nickname"] = nickname;
    _data["password"] = password;
    _data["publicName"] = publicName;
    _data["token"] = token;
    _data["type"] = type;
    _data["username"] = username;
    return _data;
  }
}