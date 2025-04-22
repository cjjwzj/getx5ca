import 'package:get/get.dart';
import 'package:getx5_ca/presentation/settings/settings_controller.dart';

class SettingsBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => SettingsController()),
    ];
  }
}
