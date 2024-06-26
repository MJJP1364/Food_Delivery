import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // var myPrimaryTextStyle =
    //     TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
      fontSize: 20,
    );
    return Container(
      decoration: BoxDecoration(
          border:
              Border.all(color: Theme.of(context).colorScheme.inversePrimary),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Delivery fee
            Column(
              children: [
                Text(
                  '\$0.99',
                  style: mySecondaryTextStyle,
                ),
                Text(
                  'Delivery fee',
                  style: mySecondaryTextStyle,
                ),
              ],
            ),

            // Delivery time
            Column(
              children: [
                Text(
                  '15-30 min',
                  style: mySecondaryTextStyle,
                ),
                Text(
                  'Delivery time',
                  style: mySecondaryTextStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
