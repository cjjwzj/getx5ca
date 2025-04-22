import 'package:get/get.dart';
import 'package:getx5_ca/presentation/about/about_binding.dart';
import 'package:getx5_ca/presentation/about/about_page.dart';
import 'package:getx5_ca/presentation/home/home_binding.dart';
import 'package:getx5_ca/presentation/home/home_page.dart';
import 'package:getx5_ca/presentation/settings/settings_binding.dart';
import 'package:getx5_ca/presentation/settings/settings_page.dart';
import 'package:getx5_ca/presentation/root/root_binding.dart';
import 'package:getx5_ca/presentation/root/root_page.dart';
import 'package:getx5_ca/presentation/unknown/unknown_page.dart';
import 'package:getx5_ca/presentation/user/login/login_binding.dart';
import 'package:getx5_ca/presentation/user/login/login_page.dart';
import 'package:getx5_ca/presentation/user/register/register_binding.dart';
import 'package:getx5_ca/presentation/user/register/register_page.dart';
import 'package:getx5_ca/presentation/user/user_page.dart';
import 'package:getx5_ca/presentation/user/user_binding.dart';
import 'package:getx5_ca/routes/auth_middleware.dart';

/// 应用页面配置
class AppPages {
  /// 初始路由
  static const INITIAL = '/root';

  /// 未知路由
  static final unknownPage = GetPage(
    name: '/unknown',
    page: () => const UnknownPage(),
    participatesInRootNavigator: true,
  );

  /// 路由列表
  static final myPages = [
    GetPage(
      name: '/root',
      page: () => const RootPage(),
      binding: RootBinding(),
      participatesInRootNavigator: true,
      middlewares: [
        AuthMiddleware(),
      ],
    ),
    GetPage(
      name: '/user',
      page: () => const UserPage(),
      binding: UserBinding(),
      participatesInRootNavigator: true,
      children: [
        GetPage(
          name: '/login',
          page: () => const LoginPage(),
          binding: LoginBinding(),
          transition: Transition.downToUp,
        ),
        GetPage(
          name: '/register',
          page: () => const RegisterPage(),
          binding: RegisterBinding(),
          transition: Transition.downToUp,
        ),
      ],
    ),
    GetPage(
      name: '/settings',
      participatesInRootNavigator: true,
      page: () => const SettingsPage(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: '/home',
      participatesInRootNavigator: true,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/about',
      page: () => const AboutPage(),
      participatesInRootNavigator: true,
      binding: AboutBinding(),
    ),
  ];

  static final myPages2 = [
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
