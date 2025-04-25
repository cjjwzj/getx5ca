import 'package:get/get.dart';
import 'package:getx5_ca/presentation/home/first/first_controller.dart';

class FirstBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => FirstPageController()),
    ];
  }
}
