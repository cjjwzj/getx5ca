import 'package:get/get.dart';
import 'package:getx5_ca/presentation/root/root_controller.dart';

class RootBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => RootController()),
    ];
  }
}
