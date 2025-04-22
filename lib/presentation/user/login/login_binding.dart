import 'package:get/get.dart';
import 'package:getx5_ca/presentation/user/login/login_controller.dart';

class LoginBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => LoginController()),
    ];
  }
}
