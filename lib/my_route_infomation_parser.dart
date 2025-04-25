import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/services/setting_service.dart';

class MyRouteInformationParser extends GetInformationParser {
  MyRouteInformationParser({required super.initialRoute});

  @override
  SynchronousFuture<RouteDecoder> parseRouteInformation(
      RouteInformation routeInformation) {
    final uri = routeInformation.uri;
    var location = uri.toString();
    if (location == '/') {
      //check if there is a corresponding page
      //if not, relocate to initialRoute
      if (!(Get.rootController.rootDelegate)
          .registeredRoutes
          .any((element) => element.name == '/')) {
        location = initialRoute;
      }
    } else if (location.isEmpty) {
      location = initialRoute;
    }
    // Get.log('路由解析22: $location');
    Get.find<SettingService>().currentRoute.value = location;

    return super.parseRouteInformation(routeInformation);
  }
}
