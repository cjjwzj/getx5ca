import 'package:get/get.dart';
import 'package:getx5_ca/presentation/about/about_controller.dart';

class AboutBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => AboutController()),
    ];
  }
}
