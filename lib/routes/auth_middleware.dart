import 'package:get/get.dart';
import 'package:getx5_ca/others/constance.dart';
import 'package:getx5_ca/services/prefs_service.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  Future<RouteDecoder?> redirectDelegate(RouteDecoder route) async {
    // you can do whatever you want here
    // but it's preferable to make this method fast
    // await Future.delayed(Duration(milliseconds: 500));

    var isLogin =
        await Get.find<PrefsService>().getBool(PrefsKey.IS_LOGIN) ?? false;
    if (isLogin) {
      return RouteDecoder.fromRoute('/home');
    } else {
      return RouteDecoder.fromRoute('/user/login');
    }
  }
}
