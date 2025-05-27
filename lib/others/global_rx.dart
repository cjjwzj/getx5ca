import 'package:get/get.dart';
import 'package:getx5_ca/routes/app_pages.dart';

abstract class GlobalRx {
  static var currentRoutePath = AppPages.INITIAL.obs;
}
