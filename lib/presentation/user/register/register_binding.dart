import 'package:get/get.dart';
import 'package:getx5_ca/presentation/user/register/register_controller.dart';

class RegisterBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => RegisterController()),
    ];
  }
}
