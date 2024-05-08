import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final comfrimPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final fullNameController = TextEditingController();
  RxBool passwordSufixIcon = true.obs;
  RxBool confrimPasswordSufixIcon = true.obs;

  void passwordSufixIconMethod() {
    passwordSufixIcon.value = !passwordSufixIcon.value;
  }

  void confrimPasswordSufixIconMethod() {
    confrimPasswordSufixIcon.value = !confrimPasswordSufixIcon.value;
  }
}
