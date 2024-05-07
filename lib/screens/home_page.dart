import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Homecontroller());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
    );
  }
}
