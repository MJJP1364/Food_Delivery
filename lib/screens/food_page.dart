import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/resturant_controller.dart';
import 'package:food_delivery/widgets/myButton.dart';
import 'package:get/get.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ResturantController>();
    var addonedata = controller.foodData[4];

    return Scaffold(
      body: Column(
        children: [
          Container(
              width: double.infinity,
              height: 260,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onInverseSurface,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Image.asset(
                // data['imagePath'],
                controller.foodData[0],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() {
                  return Text(
                    controller.foodData[1],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  );
                }),
                // const SizedBox(height: 10),
                Obx(() {
                  return Text(
                    '\$ ' '${controller.foodData[2]}',
                    style: const TextStyle(fontSize: 35),
                  );
                }),
                Obx(() {
                  return Text(controller.foodData[3]);
                }),
                // const SizedBox(height: 10),
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.inverseSurface,
                ),
                const Text(
                  'add-ons',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Theme.of(context).colorScheme.inverseSurface),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: addonedata.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CheckboxListTile(
                      splashRadius: 20,
                      title: Text('${addonedata[index].name}'),
                      subtitle: Text(
                        '\$ ${addonedata[index].price}',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      value: addonedata[index].checked,
                      onChanged: (bool? newvalue) {
                        setState(() {
                          addonedata[index].checked = newvalue;
                        });
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: MyButton(text: 'Add to Cart', onTap: () {}),
          ),
          // const SizedBox(height: 25),
        ],
      ),
    );
  }
}
