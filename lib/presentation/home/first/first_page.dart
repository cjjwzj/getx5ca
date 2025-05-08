import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/presentation/home/first/first_controller.dart';

class FirstPage extends GetView<FirstPageController> {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
              height: Get.height * 0.4,
              child: Obx(
                () => PageView(
                  controller: controller.pageViewController,
                  onPageChanged: (index) {
                    controller.onPageChanged(index);
                  },
                  children: controller.banners
                      .map(
                        (e) => ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: GestureDetector(
                            onTap: () {
                              controller.onBannerTap(e.url);
                            },
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Image.network(
                                e.imagePath,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
