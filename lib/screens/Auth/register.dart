import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:goat/helpers/colors.dart';
import 'package:goat/screens/Auth/verify.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _passwordVisible = false;
  bool _passwordVisible2 = false;
  bool checkedValue = true;

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

          Text('Register', style: TextStyle(color: kPrimaryColor, fontFamily: 'boutrosMedium', fontSize: 25),),
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
            height: res_height * 0.015,
          ),
          Container(
            width: res_width * 0.92,
            child: TextFormField(
              textInputAction: TextInputAction.go,
              obscureText: !_passwordVisible2,
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
                    _passwordVisible2 ? Icons.visibility : Icons.visibility_off,
                    color: kPrimaryColor,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _passwordVisible2 = !_passwordVisible2;
                    });
                  },
                ),
                labelStyle: new TextStyle(
                    color: kPrimaryColor, fontFamily: 'PoppinsRegular'),
                labelText: 'Confirm Password',
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
            height: res_height * 0.0075,
          ),
          CheckboxListTile(
            title: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                      text: 'Yes I agree on',
                      style: TextStyle(
                          color: kPrimaryColor, fontFamily: 'boutrosMedium')),
                  TextSpan(
                      text: ' terms & conditions',
                      style: TextStyle(
                          color: kPrimaryColor, fontFamily: 'boutrosBold')),
                ],
              ),
            ),
            activeColor: kPrimaryColor,
            value: checkedValue,
            onChanged: (newValue) {
              setState(() {
                checkedValue = newValue!;
              });
            },
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          ),
          Container(
            height: res_height * 0.0075,
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => VerifyScreen());
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
                  'Sign up',
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
                SvgPicture.asset(
                  'assets/svg/google.svg',
                  width: 50.0,
                  height: 50.0,
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
