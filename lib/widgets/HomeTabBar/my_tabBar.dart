import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/HomeTabBar/tab_controller.dart';
import 'package:get/get.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final MyTabController tabx = Get.put(MyTabController());
    return TabBar(
      controller: tabx.controller,
      tabs: const [
        Tab(child: Icon(Icons.home)),
        // 2nd tab
        Tab(child: Icon(Icons.settings)),
        // 3rd tab
        Tab(child: Icon(Icons.person)),
      ],
    );
  }
}
