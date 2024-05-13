import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/resturant_controller.dart';
import 'package:food_delivery/widgets/myButton.dart';
import 'package:get/get.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ResturantController());
    var data = Get.arguments;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onInverseSurface,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Image.asset(data['imagePath']),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['name'],
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '\$ ' '${data['price']}',
                    style: const TextStyle(fontSize: 35),
                  ),
                  Text(data['description']),
                  const SizedBox(height: 10),
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
                itemCount: data['addone'].length,
                itemBuilder: (context, index) {
                  final List addone = data['addone'];
                  return Column(
                    children: [
                      CheckboxListTile(
                        splashRadius: 20,
                        title: Text(addone[index].name),
                        subtitle: Text(
                          '\$ ${addone[index].price}',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        value: addone[index].checked!,
                        onChanged: (bool? value) {
                          addone[index].checked != value!;

                          print(addone[index].checked);
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
                height: 60,
                child: MyButton(text: 'Add to Cart', onTap: () {})),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
