// import 'package:dropdown_button2/dropdown_button2.dart';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goat/helpers/colors.dart';
import 'package:goat/screens/profile/complete_profile_2.dart';

class complete_p4 extends StatefulWidget {
  const complete_p4({Key? key}) : super(key: key);

  @override
  _complete_p4State createState() => _complete_p4State();
}

class _complete_p4State extends State<complete_p4> {
  late String selectedValue;
  TextEditingController typeValue = new TextEditingController();
  profile4Controller controller = Get.put(profile4Controller());
  void _handleRadioValueChange(int? value) {
    print('value ${value}');
    controller.changeIndex(value!);
  }

  List colors = [
    Color(0xffB89137),
    Color(0xffF30B2AF),
    Color(0xff24249E),
    Color(0xff2BAE26),
    Color(0xffFC11F9A),
    Color(0xff919191)
  ];
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {
            // Get.to(() => complete_p2());
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
                    'Finish',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SofiaProRegular',
                        fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
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
                                    'assets/images/ic_peronal_info_done.png'),
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
                                    'assets/images/ic_user_location_done.png'),
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
                                child:
                                    Image.asset('assets/images/ic_detais.png'),
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
            SizedBox(
              height: 20,
            ),
            Container(
              width: res_width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Match Rate',
                    style: TextStyle(fontFamily: 'boutrosMedium', fontSize: 17),
                  ),
                  Container(
                    width: res_width * 0.15,
                    child: TextFormField(
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
                        hintText: "50",
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
                  Container(
                    width: res_width * 0.25,
                    child: DropdownButtonFormField(
                      hint: Text('Height'), // Not necessary for Option 1

                      items: [
                        {'value': '1', 'label': 'Primary'},
                        {'value': '2', 'label': 'Primary'},
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
                          borderSide:
                              const BorderSide(color: Color(0xffE6E6E6)),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        enabledBorder: new OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE6E6E6)),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(
                            color: textGreyColor, fontFamily: 'boutrosMedium'),
                        fillColor: Colors.white70,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: kPrimaryColor),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: res_width * 0.25,
                    child: DropdownButtonFormField(
                      hint: Text('Weight'), // Not necessary for Option 1

                      items: [
                        {'value': '1', 'label': 'Primary'},
                        {'value': '2', 'label': 'Primary'},
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
                          borderSide:
                              const BorderSide(color: Color(0xffE6E6E6)),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        enabledBorder: new OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE6E6E6)),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(
                            color: textGreyColor, fontFamily: 'boutrosMedium'),
                        fillColor: Colors.white70,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: kPrimaryColor),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
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
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                      margin: EdgeInsets.only(left: 6),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Other Skills',
                        style: TextStyle(
                            fontFamily: 'boutrosBold',
                            fontSize: 16,
                            color: Colors.white),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() => Container(
                  width: res_width * 0.9,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(children: [
                    Container(
                      width: res_width * 0.8,
                      child: TextField(
                        controller: typeValue,
                        onChanged: (value) {
                          if (value != "") {
                            print(value.lastChars(1));
                            if (value.lastChars(1) == " ") {
                              controller.addItem(value.trim());

                              typeValue.clear();
                            }
                          }
                          // print(value[value.length]);
                          // if(value != ""){
                          //   if(value.substring(value.length - 1) == ""){
                          //     print('break');

                          //   }
                          // }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type Here',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: res_height * 0.015,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        // height: 380,
                        width: res_width - 50,
                        child: SingleChildScrollView(
                          child: Wrap(
                            runSpacing: 10,
                            spacing: 15,
                            children: List.generate(controller.itemsChip.length,
                                (index) {
                              var rr = random.nextInt(6);

                              return GestureDetector(
                                onTap: () {
                                  controller.remove(index);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: colors[rr].withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10, bottom: 8, top: 8),
                                    child: Text(
                                      controller.itemsChip[index],
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: colors[rr]),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: res_height * 0.015,
                    ),
                  ]),
                )),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
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
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                      margin: EdgeInsets.only(left: 6),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Preferred Foot',
                        style: TextStyle(
                            fontFamily: 'boutrosBold',
                            fontSize: 16,
                            color: Colors.white),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() => Container(
                  width: res_width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            activeColor: kPrimaryColor,
                            value: 0,
                            groupValue: controller.type.value,
                            onChanged: _handleRadioValueChange,
                          ),
                          Text(
                            "Right",
                            style: TextStyle(
                                fontFamily: 'boutrosMedium', fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: kPrimaryColor,
                            value: 1,
                            groupValue: controller.type.value,
                            onChanged: _handleRadioValueChange,
                          ),
                          Text("Left",
                              style: TextStyle(
                                  fontFamily: 'boutrosMedium', fontSize: 18))
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            activeColor: kPrimaryColor,
                            value: 2,
                            groupValue: controller.type.value,
                            onChanged: _handleRadioValueChange,
                          ),
                          Text("Both",
                              style: TextStyle(
                                  fontFamily: 'boutrosMedium', fontSize: 18))
                        ],
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
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
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                      margin: EdgeInsets.only(left: 6),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Your Position',
                        style: TextStyle(
                            fontFamily: 'boutrosBold',
                            fontSize: 16,
                            color: Colors.white),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: res_width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: res_width * 0.4,
                    child: DropdownButtonFormField(
                      hint: Text('Primary'), // Not necessary for Option 1

                      items: [
                        {'value': '1', 'label': 'Primary'},
                        {'value': '2', 'label': 'Primary'},
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
                          borderSide:
                              const BorderSide(color: Color(0xffE6E6E6)),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        enabledBorder: new OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE6E6E6)),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(
                            color: textGreyColor, fontFamily: 'boutrosMedium'),
                        fillColor: Colors.white70,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: kPrimaryColor),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: res_width * 0.4,
                    child: DropdownButtonFormField(
                      hint: Text('Secondary'), // Not necessary for Option 1

                      items: [
                        {'value': '1', 'label': 'Primary'},
                        {'value': '2', 'label': 'Primary'},
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
                          borderSide:
                              const BorderSide(color: Color(0xffE6E6E6)),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        enabledBorder: new OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE6E6E6)),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: new TextStyle(
                            color: textGreyColor, fontFamily: 'boutrosMedium'),
                        fillColor: Colors.white70,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: kPrimaryColor),
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension E on String {
  String lastChars(int n) => substring(length - n);
}

class profile4Controller extends GetxController {
  RxList itemsChip = [].obs;
  RxInt type = 0.obs;

  addItem(data) {
    print(data);
    itemsChip.add(data);
    update();
  }

  remove(i) {
    itemsChip.removeAt(i);
  }

  changeIndex(int i) {
    type.value = i;
    update();
  }
}
