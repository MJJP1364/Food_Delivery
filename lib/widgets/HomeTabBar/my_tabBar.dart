import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_model.dart';
import 'package:food_delivery/widgets/HomeTabBar/tab_controller.dart';
import 'package:get/get.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    super.key,
  });

  List<Tab> buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final MyTabController tabx = Get.put(MyTabController());
    return TabBar(
      overlayColor: const MaterialStatePropertyAll(Colors.grey),
      splashBorderRadius: BorderRadius.circular(10),
      labelStyle: const TextStyle(
        color: Colors.blue,
        fontSize: 25,
      ),
      unselectedLabelColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(fontSize: 15),
      isScrollable: true,
      controller: tabx.controller,
      tabs: buildCategoryTabs(),
    );
  }
}
