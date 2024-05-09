import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/widgets/mySliverAppbar.dart';
import 'package:food_delivery/widgets/my_current_location.dart';
import 'package:food_delivery/widgets/my_description_box.dart';
import 'package:food_delivery/widgets/HomeTabBar/my_tabBar.dart';
import 'package:get/get.dart';
import '../widgets/HomeTabBar/home_tabBar.dart';
import '../widgets/HomeTabBar/setting_tabBar.dart';
import '../widgets/HomeTabBar/tab_controller.dart';
import '../widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(Homecontroller());
    final MyTabController tabx = Get.put(MyTabController());

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MySliverAppbar(
                  title1: const Text('Sunset Diner'),
                  title: const MyTabBar(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // my current location
                      MyCurrentLocation(),
                      // description box
                      const MyDescriptionBox(),
                    ],
                  ),
                ),
              ],
          body: TabBarView(
            controller: tabx.controller,
            children: const [
              HomeTab(),
              SettingTab(),
            ],
          )),
    );
  }
}
