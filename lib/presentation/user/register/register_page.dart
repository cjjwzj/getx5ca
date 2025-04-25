import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/presentation/user/register/register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'register'.tr,
            style: Get.textTheme.titleLarge,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'username'.tr,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'password'.tr,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'confirm_password'.tr,
            ),
          ),
          TextButton(
            onPressed: () {
              Get.offNamed('/user/login');
            },
            child: Text('register'.tr),
          )
        ],
      ),
    );
  }
}
