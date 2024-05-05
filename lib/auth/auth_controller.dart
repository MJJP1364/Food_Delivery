import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final comfrimPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final fullNameController = TextEditingController();
  RxBool sufixIcon = true.obs;

  void sufixIconMethod() {
    sufixIcon.value = !sufixIcon.value;
  }
}
