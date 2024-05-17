import 'package:flutter/material.dart';
import 'package:food_delivery/screens/setting_page.dart';
import 'package:food_delivery/widgets/drawer_tile.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Drawer(
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        shadowColor: Colors.blue,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // app ogo
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.lock_clock_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.inverseSurface,
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              thickness: 2,
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
            const SizedBox(height: 10),
            // home list tile
            MyDrawerTile(
              text: 'H O M E',
              icon: Icons.home,
              onTap: () => Get.back(),
            ),

            // setting list tile
            MyDrawerTile(
              text: 'S E T T I N G',
              icon: Icons.settings,
              onTap: () => Get.to(
                () => const SettingPage(),
                duration: const Duration(milliseconds: 950),
                transition: Transition.circularReveal,
              ),
            ),

            Expanded(child: Container()),

            // logout list tile
            MyDrawerTile(
              text: 'L O G O U T',
              icon: Icons.logout,
              onTap: () {},
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
