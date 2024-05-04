import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Themes/custom_theme.dart';
import '../Themes/theme_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        actions: [
          Obx(
            () => Switch(
              value: controller.currentTheme.value == ThemeMode.dark,
              onChanged: (value) {
                controller.switchTheme();
                Get.changeThemeMode(controller.currentTheme.value);
              },
              activeColor: CustomTheme.white,
            ),
          )
        ],
      ),
    );
  }
}
