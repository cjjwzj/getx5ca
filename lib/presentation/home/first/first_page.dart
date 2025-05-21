import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx5_ca/presentation/home/first/first_controller.dart';
import 'package:getx5_ca/presentation/home/first/first_status.dart';

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
            SizedBox(
              height: Get.height * 0.4,
              child: controller.bannerState.obx(
                (state) => PageView(
                  controller: controller.bannerState.pageViewController,
                  onPageChanged: (index) {
                    controller.bannerState.onPageChanged(index);
                  },
                  children: state
                      .map(
                        (e) => ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: GestureDetector(
                            onTap: () {
                              controller.bannerState.onBannerTap(e.url);
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
            Expanded(
              child: controller.articleListState.obx(
                (state) => ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite,
                              color: Colors.redAccent),
                        ),
                        title: Text(state.datas[index].title),
                        subtitle: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('作者:${state.datas[index].author ?? ''}'),
                            const Text(" "),
                            Text(
                                '分类:${state.datas[index].superChapterName}/${state.datas[index].chapterName}'),
                            const Text(" "),
                            Text('时间:${state.datas[index].niceDate ?? ''}'),
                          ],
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_horiz),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(); // 分割线Widget
                    },
                    itemCount: state.size),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
