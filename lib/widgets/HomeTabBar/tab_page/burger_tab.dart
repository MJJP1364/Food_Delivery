import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/resturant_controller.dart';
import 'package:food_delivery/widgets/HomeTabBar/tabs_list_tile.dart';
import 'package:get/get.dart';

class BurgerTab extends StatelessWidget {
  const BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ResturantController());

    return ListView.separated(
      itemBuilder: (context, index) => TabsListTile(
        controller: controller,
        name: controller.burgers[index].name,
        price: '\$ ${controller.burgers[index].price}',
        description: controller.burgers[index].description,
        image: controller.burgers[index].imagePath,
        onTap: () {},
      ),
      separatorBuilder: (context, index) => Divider(
        indent: 25,
        endIndent: 25,
        thickness: 2,
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      itemCount: controller.burgers.length,
    );
  }
}
