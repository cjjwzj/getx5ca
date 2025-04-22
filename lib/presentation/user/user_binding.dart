import 'package:get/get.dart';
import 'package:getx5_ca/presentation/user/user_controller.dart';

class UserBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => UserController()),
    ];
  }
}
