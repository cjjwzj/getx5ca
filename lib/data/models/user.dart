/// 用户信息实体类
///
/// 包含用户的基本信息，如ID、用户名、昵称等
class User {
  final bool admin;
  final List<dynamic> chapterTops;
  final int coinCount;
  final List<int> collectIds;
  final String email;
  final String icon;
  final int id;
  final String nickname;
  final String password;
  final String publicName;
  final String token;
  final int type;
  final String username;

  const User({
    this.admin = false,
    this.chapterTops = const [],
    this.coinCount = 0,
    this.collectIds = const [],
    this.email = '',
    this.icon = '',
    this.id = 0,
    this.nickname = '',
    this.password = '',
    this.publicName = '',
    this.token = '',
    this.type = 0,
    this.username = '',
  });

  /// 从JSON映射到实体类的工厂构造函数
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      admin: json['admin'] as bool? ?? false,
      chapterTops: (json['chapterTops'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      coinCount: json['coinCount'] as int? ?? 0,
      collectIds: (json['collectIds'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      email: json['email'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      nickname: json['nickname'] as String? ?? '',
      password: json['password'] as String? ?? '',
      publicName: json['publicName'] as String? ?? '',
      token: json['token'] as String? ?? '',
      type: json['type'] as int? ?? 0,
      username: json['username'] as String? ?? '',
    );
  }

  /// 实体类转换为JSON的方法
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['admin'] = admin;
    data['chapterTops'] = chapterTops;
    data['coinCount'] = coinCount;
    data['collectIds'] = collectIds;
    data['email'] = email;
    data['icon'] = icon;
    data['id'] = id;
    data['nickname'] = nickname;
    data['password'] = password;
    data['publicName'] = publicName;
    data['token'] = token;
    data['type'] = type;
    data['username'] = username;
    return data;
  }

  /// 复制并修改当前实例的方法
  User copyWith({
    bool? admin,
    List<dynamic>? chapterTops,
    int? coinCount,
    List<int>? collectIds,
    String? email,
    String? icon,
    int? id,
    String? nickname,
    String? password,
    String? publicName,
    String? token,
    int? type,
    String? username,
  }) {
    return User(
      admin: admin ?? this.admin,
      chapterTops: chapterTops ?? this.chapterTops,
      coinCount: coinCount ?? this.coinCount,
      collectIds: collectIds ?? this.collectIds,
      email: email ?? this.email,
      icon: icon ?? this.icon,
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      password: password ?? this.password,
      publicName: publicName ?? this.publicName,
      token: token ?? this.token,
      type: type ?? this.type,
      username: username ?? this.username,
    );
  }


  
} 