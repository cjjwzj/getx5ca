import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/presentation/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leadingWidth: 200,
        leading: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.fitHeight,
        ),
        title: TabBar(
          onTap: (value) {
            controller.onTabChanged(value);
          },
          dividerHeight: 0,
          controller: controller.tabController,
          tabs: controller.tabNames.map((e) => Tab(text: e)).toList(),
        ),
        actionsPadding: const EdgeInsets.only(left: 100, right: 20),
        actions: [
          TextButton(
            onPressed: () {},
            child: Obx(() => Text(controller.nickname.value)),
          ),
        ],
      ),
      body: GetRouterOutlet(
        initialRoute: '/home/first',
        anchorRoute: '/home',
      ),
    );
  }
}
