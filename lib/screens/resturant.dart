import 'package:flutter/material.dart';
// import 'package:food_delivery/controllers/resturant_controller.dart';
// import 'package:get/get.dart';

class Resturant extends StatefulWidget {
  const Resturant({super.key});

  @override
  State<Resturant> createState() => _ResturantState();
}

class _ResturantState extends State<Resturant> {
  bool? val = false;
  @override
  Widget build(BuildContext context) {
    // final resturantController = Get.put(ResturantController());

    return Scaffold(
      appBar: AppBar(title: const Text('Resturant')),
      body: Center(
        child: Checkbox(
          splashRadius: 20,
          value: val,
          onChanged: (bool? newvalue) {
            setState(() {
              val = newvalue;
            });

            // print(addonedata[index].checked);
          },
        ),
      ),
    );
  }
}
