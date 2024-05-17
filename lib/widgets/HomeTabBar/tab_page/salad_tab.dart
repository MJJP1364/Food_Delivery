import 'package:flutter/material.dart';
import 'package:food_delivery/screens/food_page.dart';
import 'package:get/get.dart';

import '../../../controllers/resturant_controller.dart';
import '../tabs_list_tile.dart';

class SaladTab extends StatelessWidget {
  const SaladTab({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ResturantController());
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        var data = controller.salads[index];
        return TabsListTile(
            controller: controller,
            name: data.name,
            price: '\$ ${data.price}',
            description: data.description,
            image: data.imagePath,
            onTap: () {
              controller.foodData.clear();
              controller.foodData.addAll([
                data.imagePath,
                data.name.toString(),
                data.price.toString(),
                data.description.toString(),
                data.avalebleAddones.toList(),
              ]);
              Get.to(
                () => const FoodPage(),
                duration: const Duration(milliseconds: 950),
                curve: Curves.easeInOutSine,
                transition: Transition.upToDown,
              );
            });
      },
      separatorBuilder: (context, index) => Divider(
        indent: 25,
        endIndent: 25,
        thickness: 2,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      itemCount: controller.salads.length,
    );
  }
}
