import 'package:get/get.dart';
import 'package:getx5_ca/presentation/home/harmony/harmony_controller.dart';

class HarmonyBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => HarmonyPageController()),
    ];
  }
}
