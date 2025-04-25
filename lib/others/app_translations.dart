import 'package:get/get.dart';

/// 应用翻译类 - 管理所有国际化内容
class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUS,
        'zh_CN': zhCN,
      };

  // 英文翻译
  Map<String, String> get enUS => {
        'username': 'Username',
        'password': 'Password',
        'login': 'Login',
        'register': 'Register',
        'forgot_password': 'Forgot Password',
        'remember_me': 'Remember Me',
        'or_login_with': 'Or Login With',
        'or_register_with': 'Or Register With',
        'app_title': 'Todo App',
        'no_todos': 'No todos yet',
        'add_todo': 'Add Todo',
        'title': 'Title',
        'description': 'Description',
        'cancel': 'Cancel',
        'add': 'Add',
        'error_server': 'Server error',
        'error_cache': 'Cache error',
        'error_not_found': 'Data not found',
        'error_network': 'Network connection error',
        'error_unauthorized': 'Unauthorized error',
        'error_permission': 'Permission error',
        'error_unknown': 'Unknown error',
        'settings': 'Settings',
        'language': 'Language',
        'english': 'English',
        'chinese': 'Chinese',
        'theme': 'Theme',
        'light': 'Light',
        'dark': 'Dark',
        'system': 'System',
      };

  // 中文翻译
  Map<String, String> get zhCN => {
        'username': '用户名',
        'password': '密码',
        'login': '登录',
        'register': '注册',
        'forgot_password': '忘记密码',
        'remember_me': '记住我',
        'or_login_with': '或使用',
        'or_register_with': '或注册',
        'app_title': '待办事项应用',
        'no_todos': '暂无待办事项',
        'add_todo': '添加待办事项',
        'title': '标题',
        'description': '描述',
        'cancel': '取消',
        'add': '添加',
        'error_server': '服务器错误',
        'error_cache': '缓存错误',
        'error_not_found': '未找到数据',
        'error_network': '网络连接错误',
        'error_unauthorized': '未授权错误',
        'error_permission': '权限错误',
        'error_unknown': '未知错误',
        'settings': '设置',
        'language': '语言',
        'english': '英文',
        'chinese': '中文',
        'theme': '主题',
        'light': '浅色',
        'dark': '深色',
        'system': '跟随系统',
      };
}
