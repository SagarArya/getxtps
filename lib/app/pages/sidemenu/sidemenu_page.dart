import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstandard/app/routes/app_routes.dart';
import 'sidemenu_controller.dart';
import 'widgets/menuitem_widget.dart' as a;
import 'widgets/userprofile_widget.dart';

class SideMenuPage extends GetView<SidemenuController> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
            child: SafeArea(
                child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
          userprofileRectangle(),
          a.MenuItem("Settings", icon: Icons.settings, onPress: () {
            controller.toMenuItem(Routes.SETTINGS);
          }),
        ]))));
  }
}
