import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/presentation/user/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const FlutterLogo(),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'username'.tr,
            ),
            controller: controller.userNameController,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'password'.tr,
            ),
            obscureText: true,
            controller: controller.passwordController,
          ),
          TextButton(
            onPressed: () {
              controller.login();
            },
            child: Text('login'.tr),
          ),
          TextButton(
            onPressed: () {
              Get.toNamed('/user/register');
            },
            child: Text('register'.tr),
          ),
        ],
      ),
    );
  }
}
