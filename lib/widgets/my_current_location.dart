import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});

  final controller = Get.put(Homecontroller());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver Now',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                // adress
                Text(
                  '6901 hollywood Bly',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inverseSurface,
                      fontWeight: FontWeight.bold),
                ),

                // drop down menu
                const Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }

  openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shadowColor: Colors.red,
        title: const Text('Your Location'),
        content: TextField(
          controller: controller.searchLocationTextController,
          decoration: const InputDecoration(
            hintText: 'Search Address',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
