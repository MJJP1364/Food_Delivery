import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/resturant_controller.dart';
import 'package:get/get.dart';

class Resturant extends StatelessWidget {
  const Resturant({super.key});

  @override
  Widget build(BuildContext context) {
    final resturantController = Get.put(ResturantController());
    return Scaffold(
      appBar: AppBar(title: const Text('Resturant')),
    );
  }
}
