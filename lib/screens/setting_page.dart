import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Themes/custom_theme.dart';
import '../Themes/theme_controller.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ThemeController());
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: SizedBox(
              width: double.infinity,
              height: height * 0.1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Light Theme',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    const SizedBox(width: 15),
                    Obx(() {
                      return Switch(
                        value: controller.theme.value,
                        onChanged: (value) {
                          controller.switchTheme();
                          Get.changeThemeMode(controller.currentTheme.value);
                        },
                        activeColor: CustomTheme.white,
                      );
                    }),
                    const SizedBox(width: 15),
                    const Text('Dark Theme',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
