import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx5_ca/presentation/user/user_controller.dart';

class UserPage extends GetView<UserController> {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background_1.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 8,
            right: 8,
            child: IconButton(
              onPressed: () {
                controller.changeThemeMode();
              },
              icon: Obx(
                () => Icon(
                  controller.themeModeIcon.value,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: 280,
              height: 300,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GetRouterOutlet(
                    initialRoute: '/user/login',
                    anchorRoute: '/user',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
