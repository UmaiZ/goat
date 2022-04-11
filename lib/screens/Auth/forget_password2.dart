import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:goat/helpers/colors.dart';
import 'package:goat/screens/Auth/forget_password3.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class ForgetPasswordTwo extends StatefulWidget {
  const ForgetPasswordTwo({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordTwo> createState() => _ForgetPasswordTwoState();
}

class _ForgetPasswordTwoState extends State<ForgetPasswordTwo> {
  OtpFieldController otpController = OtpFieldController();

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
              child: Text(
                'A 6-digit code has been sent to Mobile number (change)',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: 'boutrosMedium',
                    fontSize: 17),
              )),
          Container(
            height: res_height * 0.035,
          ),
          OTPTextField(
              controller: otpController,
              length: 4,
              width: MediaQuery.of(context).size.width,
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldWidth: 55,
              fieldStyle: FieldStyle.box,
              outlineBorderRadius: 15,
              style: TextStyle(fontSize: 17),
              onChanged: (pin) {
                print("Changed: " + pin);
              },
              onCompleted: (pin) {
                print("Completed: " + pin);
              }),
          Container(
            height: res_height * 0.035,
          ),
          Container(
              width: res_width * 0.92,
              child: Text(
                "Didn't receive the code? Resend",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kPrimaryColor,
                    fontFamily: 'boutrosMedium',
                    fontSize: 17),
              )),
          Container(
            height: res_height * 0.035,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => ForgetPasswordThree());
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
                  'Verify',
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
