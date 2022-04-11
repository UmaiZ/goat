import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:goat/helpers/colors.dart';
import 'package:goat/screens/Auth/login.dart';

class SocialAuth extends StatefulWidget {
  const SocialAuth({Key? key}) : super(key: key);

  @override
  State<SocialAuth> createState() => _SocialAuthState();
}

class _SocialAuthState extends State<SocialAuth> {
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: res_height * 0.35,
          ),
          Container(
            width: res_width * 0.92,
            child: TextFormField(
              textInputAction: TextInputAction.go,
              onChanged: (value) {},
              onSaved: (value) {},
              style: TextStyle(
                  fontSize: 15,
                  color: textGreyColor,
                  fontFamily: 'boutrosMedium'),
              decoration: new InputDecoration(
                labelStyle: new TextStyle(
                    color: kPrimaryColor, fontFamily: 'PoppinsRegular'),
                labelText: 'Phone',
                border: new OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffbdbdbd), width: 1),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xffbdbdbd), width: 1),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(
                    color: Color(0xffbdbdbd), fontFamily: 'boutrosMedium'),
                hintText: "+962 xx xxxx xxx",
                fillColor: Colors.white70,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: kPrimaryColor, width: 1),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: res_height * 0.015,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => LoginScreen());
            },
            child: Container(
              width: res_width * 0.92,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        const Color(0xFF004500),
                        const Color(0xFF00d700),
                      ],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.0, 0.0),
                      stops: [0.0, 1.0],
                      tileMode: TileMode.clamp),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Center(
                    child: Text(
                  'Complete Registration',
                  style: TextStyle(
                      fontFamily: 'boutrosBold',
                      fontSize: 16,
                      color: Colors.white),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
