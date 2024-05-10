

import 'package:flutter/material.dart';

import '../../controllers/resturant_controller.dart';

class TabsListTile extends StatelessWidget {
  const TabsListTile({
    super.key,
    required this.controller,
    required this.name,
    required this.price,
    required this.description,
    required this.image,
    this.onTap,
  });

  final ResturantController controller;
  final String name;
  final String price;
  final String description;
  final String image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    // color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.error, fontSize: 25),
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: 250,
                  child: Text(
                    description,
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 5),
            SizedBox(
              width: 80,
              height: 80,
              child: Image.asset(image),
            )
          ],
        ),
      ),
    );
  }
}
