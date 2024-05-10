import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/resturant_controller.dart';
import 'package:get/get.dart';

import '../tabs_list_tile.dart';

class DrinkTab extends StatelessWidget {
  const DrinkTab({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ResturantController());
    return ListView.separated(
      itemBuilder: (context, index) => TabsListTile(
        controller: controller,
        name: controller.drinks[index].name,
        price: '\$ ${controller.drinks[index].price}',
        description: controller.drinks[index].description,
        image: controller.drinks[index].imagePath,
        onTap: () {},
      ),
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
