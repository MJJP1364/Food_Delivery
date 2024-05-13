import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/resturant_controller.dart';
import 'package:food_delivery/screens/food_page.dart';
import 'package:get/get.dart';

import '../tabs_list_tile.dart';

class DrinkTab extends StatelessWidget {
  const DrinkTab({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ResturantController());
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        var data = controller.drinks[index];
        return TabsListTile(
          controller: controller,
          name: data.name,
          price: '\$ ${data.price}',
          description: data.description,
          image: data.imagePath,
          onTap: () => Get.to(() => const FoodPage(),
              duration: const Duration(milliseconds: 950),
              curve: Curves.easeInOutSine,
              transition: Transition.upToDown,
              arguments: {
                'imagePath': data.imagePath,
                'name': data.name.toString(),
                'description': data.description.toString(),
                'price': data.price.toString(),
                'addone': data.avalebleAddones,
              }),
        );
      },
      separatorBuilder: (context, index) => Divider(
        indent: 25,
        endIndent: 25,
        thickness: 2,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      itemCount: controller.drinks.length,
    );
  }
}
