import 'package:flutter/material.dart';
import 'package:food_delivery/auth/register_page.dart';
import 'package:food_delivery/screens/home_page.dart';
import 'package:food_delivery/widgets/animated_text.dart';
import 'package:food_delivery/widgets/input_text.dart';
import 'package:get/get.dart';
import '../widgets/myButton.dart';
import 'auth_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authController = Get.put(AuthController());
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        // title: const Text('Login Page'),
        actions: [
          ElevatedButton(
              onPressed: () => Get.to(() => const HomePage()),
              child: const Text('Home Page')),
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
                      text: 'Login',
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'Food Delivery App',
                  style: TextStyle(
                      fontSize: 30,
                      color: Theme.of(context).colorScheme.inverseSurface),
                ),
                const SizedBox(height: 20),
                InputText(
                  hint: 'Email',
                  controller: authController.emailController,
                  lable: 'email',
                  obsecured: false,
                  icon: Icons.email,
                ),
                const SizedBox(height: 20),
                Obx(
                  () {
                    return InputText(
                      hint: 'Enter Password',
                      controller: authController.passwordController,
                      lable: 'password',
                      icon: Icons.password_rounded,
                      obsecured: authController.passwordSufixIcon.value,
                      onTap: authController.passwordSufixIconMethod,
                      sufixe: authController.passwordSufixIcon.value == false
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
                      onPressed: () => Get.to(() => const RegisterPage(),
                          duration: const Duration(milliseconds: 800),
                          transition: Transition.rightToLeft,
                          curve: Curves.easeIn),
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
