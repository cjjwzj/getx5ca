import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/presentation/home/first/first_controller.dart';

class FirstPage extends GetView<FirstPageController> {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: Get.height * 0.5),
              child: Obx(
                () => CarouselView.weighted(
                  controller: controller.carouselController,

                  // 每个 item 的权重
                  flexWeights: const [1, 10, 1],
                  // 每个 item 的主轴尺寸（比如横向时宽度，纵向时高度）
                  children: List.generate(controller.banners.length, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              Image.network(controller.banners[index].imagePath)
                                  .image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          controller.banners[index].title,
                          style: TextStyle(
                              color: Get.theme.secondaryHeaderColor,
                              fontSize: Get.textTheme.titleLarge?.fontSize ?? 24.0),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
