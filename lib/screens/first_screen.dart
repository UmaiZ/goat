import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:goat/screens/Auth/login.dart';
import 'package:goat/screens/Auth/register.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Spacer(),
            Container(
              width: res_width * 0.9,
              child: Text('Goat App',
                  style: TextStyle(
                    fontFamily: 'boutrosBold',
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
            Container(
              height: res_height * 0.05,
            ),
            Container(
              width: res_width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => RegisterScreen());
                    },
                    child: Container(
                      width: res_width * 0.425,
                      decoration: BoxDecoration(
                          color: Color(0xffFFC727),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Center(
                            child: Text(
                          'REGISTER',
                          style: TextStyle(
                              fontFamily: 'boutrosBold', fontSize: 16),
                        )),
                      ),
                    ),
                  ),
                  // Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => LoginScreen());
                    },
                    child: Container(
                      width: res_width * 0.425,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Center(
                            child: Text(
                          'LOGIN',
                          style: TextStyle(
                              fontFamily: 'boutrosBold', fontSize: 16),
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: res_height * 0.05,
            )
          ],
        ),
      ),
    );
  }
}
