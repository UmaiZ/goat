import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:goat/helpers/colors.dart';
import 'package:goat/screens/Auth/verify.dart';
import 'package:goat/screens/profile/complete_profile_2.dart';
import 'package:intl/intl.dart';

class complete_p1 extends StatefulWidget {
  const complete_p1({Key? key}) : super(key: key);

  @override
  _complete_p1State createState() => _complete_p1State();
}

class _complete_p1State extends State<complete_p1> {
  profile1Controller controller = Get.put(profile1Controller());

  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  late String selectedValue;

  int _radioValue = 0;
  bool monVale = true;
  final _formKey = GlobalKey<FormState>();
  var _userEmail = '';
  var _userPassword = '';
  var _userNumber = '';
  var _userName = '';

  DateTime selectedDate = DateTime.now();
  // final TextEditingController controller = TextEditingController();
  String initialCountry = 'BH';
  TextEditingController dobController = TextEditingController();

  void _handleRadioValueChange(int? value) {
    print('value ${value}');
    controller.changeIndex(value!);
  }

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1800),
        lastDate: DateTime(2100));
    if (picked != null) {
      setState(() {
        dobController.text = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Obx(() => Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () {
                Get.to(() => complete_p2());
              },
              child: Container(
                height: 60,
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
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'boutrosMedium',
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 75),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                          'assets/images/ic_peronal_info.png'),
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: new Text(
                                  "Personal",
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset('assets/icons/Dots.png'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                          'assets/images/ic_user_location.png'),
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: new Text(
                                  "Address",
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Image.asset('assets/icons/Dots.png'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                          'assets/images/ic_detais.png'),
                                    ),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: new Text(
                                  "Details",
                                  style: TextStyle(fontSize: 14.0),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                 
                  Container(
                    height: res_height * 0.030,
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
                          borderRadius: BorderRadius.circular(32)),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Register As',
                              style: TextStyle(
                                  fontFamily: 'boutrosBold',
                                  fontSize: 16,
                                  color: Colors.white),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 16, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Width * 0.425,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: kPrimaryColor,
                                value: 0,
                                groupValue: controller.type.value,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text("Captain")
                            ],
                          ),
                        ),
                        Container(
                          width: Width * 0.425,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: kPrimaryColor,
                                value: 1,
                                groupValue: controller.type.value,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text("Golf")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 16, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: Width * 0.425,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: kPrimaryColor,
                                value: 2,
                                groupValue: controller.type.value,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text("Fan")
                            ],
                          ),
                        ),
                        Container(
                          width: Width * 0.425,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          child: Row(
                            children: [
                              Radio(
                                activeColor: kPrimaryColor,
                                value: 3,
                                groupValue: controller.type.value,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text("Service Provider")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Height * 0.012,
                  ),
                  Container(
                    width: Width * 0.9,
                    child: TextFormField(
                      maxLines: 3,
                    
                      style: TextStyle(
                          color: Colors.grey, fontFamily: 'boutrosMedium'),
                      decoration: new InputDecoration(
                        border: new OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.25),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(
                            color: Color(0xffbdbdbd),
                            fontFamily: 'boutrosMedium'),
                        hintText: "Role Description Here",
                        fillColor: Colors.white,
                        enabledBorder: new OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffbdbdbd), width: 1),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  SizedBox(
                    height: Height * 0.012,
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
                          borderRadius: BorderRadius.circular(32)),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Personal Info',
                              style: TextStyle(
                                  fontFamily: 'boutrosBold',
                                  fontSize: 16,
                                  color: Colors.white),
                            )),
                      ),
                    ),
                  ),
                  Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: Height * 0.02,
                          ),
                          Container(
                            width: Width * 0.9,
                            height: Height * 0.08,
                            child: TextFormField(
                              key: ValueKey('name'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name.';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _userName = value!;
                              },
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'boutrosMedium'),
                              decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 1.25),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle: new TextStyle(
                                    color: Color(0xffbdbdbd),
                                    fontFamily: 'boutrosMedium'),
                                hintText: "Enter Full Name",
                                fillColor: Colors.white,
                                enabledBorder: new OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffbdbdbd), width: 1),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.black, width: 1),
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Height * 0.012,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: Width * 0.55,
                                height: Height * 0.08,
                                child: TextFormField(
                                  key: ValueKey('email'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter a valid email.';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _userEmail = value!;
                                  },
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'boutrosMedium'),
                                  decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 1.25),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    filled: true,
                                    hintStyle: new TextStyle(
                                        color: Color(0xffbdbdbd),
                                        fontFamily: 'boutrosMedium'),
                                    hintText: "Enter Active Email Adress",
                                    fillColor: Colors.white70,
                                    enabledBorder: new OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xffbdbdbd), width: 1),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 1),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 20),
                                width: Width * 0.3,
                                height: Height * 0.08,
                                child: TextFormField(
                                  key: ValueKey('email'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter a valid email.';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _userEmail = value!;
                                  },
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'boutrosMedium'),
                                  decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 1.25),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    filled: true,
                                    hintStyle: new TextStyle(
                                        color: Color(0xffbdbdbd),
                                        fontFamily: 'boutrosMedium'),
                                    hintText: "Nationality",
                                    fillColor: Colors.white70,
                                    enabledBorder: new OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xffbdbdbd), width: 1),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 1),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Height * 0.012,
                          ),
                          Container(
                            width: Width * 0.9,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: Width * 0.4,
                                  child: DropdownButtonFormField(
                                    hint: Text(
                                        'Select Gendar'), // Not necessary for Option 1

                                    items: [
                                      {'value': '1', 'label': 'Male'},
                                      {'value': '2', 'label': 'Female'},
                                    ].map((category) {
                                      return new DropdownMenuItem(
                                          value: category['value'],
                                          child: Text(
                                            category['label'].toString(),
                                            style: TextStyle(
                                              color: textGreyColor,
                                              fontFamily: 'boutrosMedium',
                                              fontSize: 14,
                                            ),
                                          ));
                                    }).toList(),
                                    onChanged: (newValue) {},
                                    decoration: new InputDecoration(
                                      isDense: true,
                                      border: new OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(5.0),
                                        ),
                                      ),
                                      enabledBorder: new OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffE6E6E6)),
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(5.0),
                                        ),
                                      ),
                                      filled: true,
                                      hintStyle: new TextStyle(
                                          color: textGreyColor,
                                          fontFamily: 'boutrosMedium'),
                                      fillColor: Colors.white70,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: kPrimaryColor),
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(5.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: GestureDetector(
                                      onTap: () async {
                                        _selectDate(context);
                                      },
                                      child: Center(
                                          child: Text(
                                        "Date of Birth",
                                        style: TextStyle(
                                            color: Colors.grey.shade800),
                                      ))),
                                ),
                                Container(
                                  width: 60,
                                  height: 50,
                                  child: TextFormField(
                                    key: ValueKey('number'),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter a valid number.';
                                      }
                                      return null;
                                    },
                                    onSaved: (value) {
                                      _userNumber = value!;
                                    },
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: 'boutrosMedium'),
                                    decoration: new InputDecoration(
                                      border: new OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 1.25),
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      filled: true,
                                      hintStyle: new TextStyle(
                                          color: Color(0xffbdbdbd),
                                          fontFamily: 'boutrosMedium'),
                                      hintText: "Age",
                                      fillColor: Colors.white70,
                                      enabledBorder: new OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffbdbdbd), width: 1),
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(8.0),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.black, width: 1),
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Height * 0.024,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: 210,
                                height: 50,
                                child: TextFormField(
                                  key: ValueKey('number'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter a valid number.';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _userNumber = value!;
                                  },
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'boutrosMedium'),
                                  decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 1.25),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    filled: true,
                                    hintStyle: new TextStyle(
                                        color: Color(0xffbdbdbd),
                                        fontFamily: 'boutrosMedium'),
                                    hintText: "Your Job",
                                    fillColor: Colors.white70,
                                    enabledBorder: new OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xffbdbdbd), width: 1),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(8.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 1),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 130,
                                height: 50,
                                child: TextFormField(
                                  key: ValueKey('number'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter a valid number.';
                                    }
                                    return null;
                                  },
                                  onSaved: (value) {
                                    _userNumber = value!;
                                  },
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'boutrosMedium'),
                                  decoration: new InputDecoration(
                                    border: new OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.grey, width: 1.25),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    filled: true,
                                    hintStyle: new TextStyle(
                                        color: Color(0xffbdbdbd),
                                        fontFamily: 'boutrosMedium'),
                                    hintText: "Matrial Status",
                                    fillColor: Colors.white70,
                                    enabledBorder: new OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color(0xffbdbdbd), width: 1),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(8.0),
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.black, width: 1),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                        'I agree to the Terms and Conditions and accept and updated and news'),
                    value: controller.terms.value,
                    onChanged: (bool? value) {
                      controller.changeTerms();
                      // setState(() {
                      //   monVale = value!;
                      // });
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class profile1Controller extends GetxController {
  RxInt type = 0.obs;
  RxBool terms = true.obs;

  changeTerms() {
    terms.value = !terms.value;
    update();
  }

  changeIndex(int i) {
    // print(i);
    type.value = i;
    update();
  }
}
