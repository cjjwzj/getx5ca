class LoginRes {
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

  LoginRes(
      {this.admin,
      this.chapterTops,
      this.coinCount,
      this.collectIds,
      this.email,
      this.icon,
      this.id,
      this.nickname,
      this.password,
      this.publicName,
      this.token,
      this.type,
      this.username});

  LoginRes.fromJson(Map<String, dynamic> json) {
    if (json["admin"] is bool) {
      admin = json["admin"];
    }
    if (json["chapterTops"] is List) {
      chapterTops = json["chapterTops"] ?? [];
    }
    if (json["coinCount"] is int) {
      coinCount = json["coinCount"];
    }
    if (json["collectIds"] is List) {
      collectIds = json["collectIds"] == null
          ? null
          : List<int>.from(json["collectIds"]);
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["icon"] is String) {
      icon = json["icon"];
    }
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["nickname"] is String) {
      nickname = json["nickname"];
    }
    if (json["password"] is String) {
      password = json["password"];
    }
    if (json["publicName"] is String) {
      publicName = json["publicName"];
    }
    if (json["token"] is String) {
      token = json["token"];
    }
    if (json["type"] is int) {
      type = json["type"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
  }

  static List<LoginRes> fromList(List<Map<String, dynamic>> list) {
    return list.map(LoginRes.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["admin"] = admin;
    if (chapterTops != null) {
      data["chapterTops"] = chapterTops;
    }
    data["coinCount"] = coinCount;
    if (collectIds != null) {
      data["collectIds"] = collectIds;
    }
    data["email"] = email;
    data["icon"] = icon;
    data["id"] = id;
    data["nickname"] = nickname;
    data["password"] = password;
    data["publicName"] = publicName;
    data["token"] = token;
    data["type"] = type;
    data["username"] = username;
    return data;
  }
}
