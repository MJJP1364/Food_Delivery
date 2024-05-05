import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  // initializing with the current theme of the device
  Rx<ThemeMode> currentTheme = ThemeMode.system.obs;
  RxBool theme = false.obs;
  final box = GetStorage();

  @override
  void onInit() {
    box.writeIfNull('theme_mode', false);
    theme.value = box.read('theme_mode');
    super.onInit();
  }

  // function to switch between themes
  void switchTheme() {
    if (box.read('theme_mode') == false) {
      theme.value = true;
      box.write('theme_mode', true);
      currentTheme.value = ThemeMode.dark;
    } else {
      theme.value = false;
      box.write('theme_mode', false);
      currentTheme.value = ThemeMode.light;
    }
  }
}
