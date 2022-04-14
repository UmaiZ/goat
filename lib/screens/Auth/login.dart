import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:goat/helpers/colors.dart';
import 'package:goat/screens/Auth/forget_password.dart';
import 'package:goat/screens/Auth/social_auth.dart';
import 'package:goat/screens/profile/profile_services_provider.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../home/mainhome.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  OtpFieldController otpController = OtpFieldController();

  bool _passwordVisible = false;
  bool _passwordVisible2 = false;
  bool remembermeValue = true;

  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/images/h2.png'),
          ),
                    SizedBox(height: res_height * 0.025,),

          Text('Login', style: TextStyle(color: kPrimaryColor, fontFamily: 'boutrosMedium', fontSize: 25),),
          SizedBox(height: res_height * 0.025,),
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
                labelText: 'Email',
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
                hintText: "example@yahoo.com",
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
          Container(
            width: res_width * 0.92,
            child: TextFormField(
              textInputAction: TextInputAction.go,
              obscureText: !_passwordVisible,
              onChanged: (value) {},
              onSaved: (value) {},
              style: TextStyle(
                  fontSize: 15,
                  color: textGreyColor,
                  fontFamily: 'boutrosMedium'),
              decoration: new InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: kPrimaryColor,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
                labelStyle: new TextStyle(
                    color: kPrimaryColor, fontFamily: 'PoppinsRegular'),
                labelText: 'Password',
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
                hintText: "*******",
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
            height: res_height * 0.01,
          ),
          CheckboxListTile(
            title: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Remember me',
                      style: TextStyle(
                          color: kPrimaryColor, fontFamily: 'boutrosMedium')),
                ],
              ),
            ),
            activeColor: kPrimaryColor,
            value: remembermeValue,
            onChanged: (newValue) {
              setState(() {
                remembermeValue = newValue!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
          Container(
            height: res_height * 0.01,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => profile_sp());
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
                  'Login',
                  style: TextStyle(
                      fontFamily: 'boutrosBold',
                      fontSize: 16,
                      color: Colors.white),
                )),
              ),
            ),
          ),
          Container(
            height: res_height * 0.025,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => ForgetPassword());
            },
            child: Container(
                width: res_width * 0.92,
                child: Text(
                  'Forget password ? ',
                  style: TextStyle(
                      color: kPrimaryColor, fontFamily: 'boutrosBold'),
                )),
          ),
          Container(
            height: res_height * 0.025,
          ),
          Container(
            width: res_width * 0.92,
            child: Row(
              children: [
                Expanded(
                    child: Divider(
                  height: 1.5,
                  color: Colors.black,
                )),
                Text('    OR    '),
                Expanded(
                    child: Divider(
                  height: 1.5,
                  color: Colors.black,
                )),
              ],
            ),
          ),
          Container(
            height: res_height * 0.025,
          ),
          Container(
            width: res_width * 0.92,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => SocialAuth());
                  },
                  child: SvgPicture.asset(
                    'assets/svg/google.svg',
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
                SvgPicture.asset(
                  'assets/svg/facebook.svg',
                  width: 50.0,
                  height: 50.0,
                ),
                SvgPicture.asset(
                  'assets/svg/facebook.svg',
                  width: 50.0,
                  height: 50.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
