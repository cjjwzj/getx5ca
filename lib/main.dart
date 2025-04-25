import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/routes/app_pages.dart';
import 'package:getx5_ca/others/app_translations.dart';
import 'package:getx5_ca/services/prefs_service.dart';
import 'package:getx5_ca/services/setting_service.dart';
import 'package:getx5_ca/app_theme.dart';
import 'package:getx5_ca/services/wan_api_service.dart';

import 'my_route_infomation_parser.dart';
import 'others/global_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      //浏览器前进后退监听
      routeInformationParser: MyRouteInformationParser(
        initialRoute: AppPages.INITIAL,
      ),
      title: 'app_title'.tr,
      locale: Get.deviceLocale,
      getPages: AppPages.myPages,
      debugShowCheckedModeBanner: false,
      //只能监听第一层路由变化
      routingCallback: (routing) {
        Get.log('routingCallback: ${routing?.current}');
      },
      // initialRoute: AppPages.INITIAL,
      fallbackLocale: const Locale('zh', 'CN'), // 默认中文
      translations: AppTranslations(),
      binds: [
        Bind.lazyPut(() => SettingService()),
        Bind.lazyPut(() => PrefsService()),
        Bind.lazyPut(() => WanApiService()),
      ],
      unknownRoute: AppPages.unknownPage,
      // 主题配置
      theme: const AppTheme().light(),
      darkTheme: const AppTheme().dark(),
      themeMode: ThemeMode.system,
    );
  }
}
