class LoginReq {
  final String username;
  final String password;

  LoginReq({required this.username, required this.password});
  
  /// 将对象转换为JSON格式
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}

