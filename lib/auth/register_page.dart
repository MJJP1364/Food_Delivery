import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/input_text.dart';
import '../widgets/myButton.dart';
import 'auth_controller.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.put(AuthController());
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
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
                  'Lets create an account for you',
                  style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inverseSurface),
                ),
                const SizedBox(height: 15),
                InputText(
                  hint: 'Enter Name',
                  controller: authController.nameController,
                  lable: 'Name',
                  obsecured: false,
                  // icon: Icons.email,
                ),
                const SizedBox(height: 15),
                InputText(
                  hint: 'Enter full Name',
                  controller: authController.fullNameController,
                  lable: 'full name',
                  obsecured: false,
                  // icon: Icons.email,
                ),
                const SizedBox(height: 15),
                InputText(
                  hint: 'Email',
                  controller: authController.emailController,
                  lable: 'email',
                  obsecured: false,
                  icon: Icons.email,
                ),
                const SizedBox(height: 15),
                Obx(
                  () {
                    return InputText(
                      hint: 'Enter Password',
                      controller: authController.passwordController,
                      lable: 'password',

                      icon: Icons.password_rounded,
                      obsecured: authController.sufixIcon.value,
                      onTap: authController.sufixIconMethod,
                      // ignore: unrelated_type_equality_checks
                      sufixe: authController.sufixIcon == false
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                    );
                  },
                ),
                const SizedBox(height: 15),
                Obx(
                  () {
                    return InputText(
                      hint: 'Enter Comfrim Password',
                      controller: authController.comfrimPasswordController,
                      lable: 'comfrim password',

                      icon: Icons.password_rounded,
                      obsecured: authController.sufixIcon.value,
                      onTap: authController.sufixIconMethod,
                      // ignore: unrelated_type_equality_checks
                      sufixe: authController.sufixIcon == false
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                    );
                  },
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: MyButton(
                    onTap: () {},
                    text: 'S I G N U P',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
