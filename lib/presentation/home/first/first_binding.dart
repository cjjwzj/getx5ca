import 'package:get/get.dart';
import 'package:getx5_ca/presentation/home/first/first_controller.dart';
import 'package:getx5_ca/presentation/home/first/first_status.dart';

class FirstBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut(() => FirstPageController()),
      Bind.lazyPut(() => BannerState()),
      Bind.lazyPut(() => ArticleListState()),
    ];
  }
}
