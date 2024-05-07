import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/animated_text.dart';
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
        // title: const Text('Register Page'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_forward_ios_sharp)),
          const SizedBox(width: 10),
        ],
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  child: SizedBox(
                    width: 300,
                    child: AnimatedText(
                      text: 'Register!',
                    ),
                  ),
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
