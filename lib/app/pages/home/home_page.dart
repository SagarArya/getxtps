import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstandard/app/controllers/theme_controller.dart';
import 'package:getxstandard/app/pages/sidemenu/sidemenu_page.dart';
import 'package:getxstandard/app/pages/widgets/loading_widget.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    //Get other depended controllers
    var themeCtrl = Get.find<ThemeController>();

    return Scaffold(
      drawer: appDrawer(),
      appBar: AppBar(
        actions: [
          Obx(() {
            return IconButton(
              icon: Icon(
                controller.searchMode ? Icons.search : Icons.search,
                color: controller.searchMode
                    ? Colors.white
                    : themeCtrl.activeTheme.iconTheme.color,
              ),
              onPressed: () {
                controller.searchMode = !controller.searchMode;
              },
            );
          })
        ],
      ),
      body: SafeArea(
        child: GetX<HomeController>(
          initState: (state) {},
          builder: (controller) {
            return controller.isLoading
                ? LoadingWidget()
                : Column(children: []);
          },
        ),
      ),
    );
  }

  Widget appDrawer() {
    return SideMenuPage();
  }
}
