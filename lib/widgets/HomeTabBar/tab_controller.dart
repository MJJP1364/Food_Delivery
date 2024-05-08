import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(
      animationDuration: const Duration(milliseconds: 900),
      vsync: this,
      length: 2,
    );
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
