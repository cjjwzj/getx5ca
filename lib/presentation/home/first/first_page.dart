import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx5_ca/presentation/home/first/first_controller.dart';

class FirstPage extends GetView<FirstPageController> {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: Get.height * 0.5, maxWidth: Get.width * 0.8),
              child: CarouselView.weighted(
                controller: controller.carouselController,
                // 每个 item 的权重
                flexWeights: [1, 10, 1],
                // 每个 item 的主轴尺寸（比如横向时宽度，纵向时高度）
                children: [
                  Container(
                      color: Colors.red, child: const Center(child: Text('第1页'))),
                  Container(
                      color: Colors.green,
                      child: const Center(child: Text('第2页'))),
                  Container(
                      color: Colors.blue,
                      child: const Center(child: Text('第3页'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
