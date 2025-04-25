import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx5_ca/presentation/home/first/first_controller.dart';

class FirstPage extends GetView<FirstPageController> {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('FirstPage')),
    );
  }
}
