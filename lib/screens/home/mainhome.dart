import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:goat/helpers/colors.dart';

import 'home_screen.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: kPrimaryColor,
            items: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home_outlined, size: 30),
                  controller.count.value != 0
                      ? Text(
                          'Home',
                        )
                      : Container()
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, size: 30),
                  controller.count.value != 1
                      ? Text(
                          'Create',
                        )
                      : Container()
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart, size: 30),
                  controller.count.value != 2
                      ? Text(
                          'Teams',
                        )
                      : Container()
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.people_outline, size: 30),
                  controller.count.value != 3
                      ? Text(
                          'Players',
                        )
                      : Container()
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.gamepad_outlined, size: 30),
                  controller.count.value != 4
                      ? Text(
                          'Games',
                        )
                      : Container()
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.verified_user_outlined, size: 30),
                  controller.count.value != 5
                      ? Text(
                          'Profile',
                        )
                      : Container()
                ],
              ),
            ],
            onTap: (index) {
              controller.changeIndex(index);
            },
          ),

          body: HomeScreen(),
        ));
  }
}

class Controller extends GetxController {
  RxInt count = 0.obs;

  void changeIndex(int i) {
    print(i);
    count.value = i;
    update();
  }
}
