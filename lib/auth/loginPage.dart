import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/input_text.dart';
import 'package:get/get.dart';
import '../Themes/custom_theme.dart';

import '../Themes/theme_controller.dart';
import '../widgets/myButton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ThemeController());
    final formKey = GlobalKey<FormState>();

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
      body: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_open_rounded,
                  size: 100,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                const SizedBox(height: 15),
                Text(
                  'Food Delivery App',
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inverseSurface),
                ),
                const SizedBox(height: 20),
                InputText(
                  hint: 'Email',
                  controller: controller.emailController,
                  lable: 'email',
                  obsecured: false,
                  icon: Icons.email,
                ),
                const SizedBox(height: 20),
                Obx(
                  () {
                    return InputText(
                      hint: 'Enter Password',
                      controller: controller.passwordController,
                      lable: 'password',

                      icon: Icons.password_rounded,
                      obsecured: controller.sufixIcon.value,
                      onTap: controller.sufixIconMethod,
                      // ignore: unrelated_type_equality_checks
                      sufixe: controller.sufixIcon == false
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                    );
                  },
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: MyButton(
                    onTap: () {},
                    text: 'S I G N I N',
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Not a member?'),
                    TextButton(
                      child: const Text(
                        'Register Now',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
