import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Themes/custom_theme.dart';
import '../Themes/theme_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        actions: [
          Obx(() {
            return Switch(
              value: controller.theme.value,
              onChanged: (value) {
                controller.switchTheme();
                Get.changeThemeMode(controller.currentTheme.value);
              },
              activeColor: CustomTheme.white,
            );
          })
        ],
      ),
    );
  }
}
