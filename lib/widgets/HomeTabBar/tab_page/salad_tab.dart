import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/resturant_controller.dart';
import '../tabs_list_tile.dart';

class SaladTab extends StatelessWidget {
  const SaladTab({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ResturantController());
    return ListView.separated(
      itemBuilder: (context, index) => TabsListTile(
        controller: controller,
        name: controller.salads[index].name,
        price: '\$ ${controller.salads[index].price}',
        description: controller.salads[index].description,
        image: controller.salads[index].imagePath,
        onTap: () {},
      ),
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
