import 'package:get/get.dart';
import 'package:getx5_ca/presentation/home/home_controller.dart';

class HomeBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => HomeController()),
    ];
  }
}
