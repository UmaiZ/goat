// import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goat/screens/profile/complete_profile_2.dart';
import 'package:goat/screens/profile/complete_profile_3.dart';

class service_provider extends StatefulWidget {
  const service_provider({Key? key}) : super(key: key);

  @override
  _service_providerState createState() => _service_providerState();
}

class _service_providerState extends State<service_provider> {
  final List<String> genderItems = [
    'Male',
    'Female',
  ];

  late String selectedValue;
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {
            Get.to(() => complete_p3());
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
                        'Services you offer',
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
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 3,
                        left: 3,
                      ),
                      child: Container(
                          height: 310,
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 150,
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
                                    // _userNumber = value!;
                                  },
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'SofiaProRegular'),
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
                                        fontFamily: 'SofiaProRegular'),
                                    hintText: "Service Name",
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
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 150,
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
                                    // _userNumber = value!;
                                  },
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'SofiaProRegular'),
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
                                        fontFamily: 'SofiaProRegular'),
                                    hintText: "other? please specify",
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
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 150,
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
                                    // _userNumber = value!;
                                  },
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'SofiaProRegular'),
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
                                        fontFamily: 'SofiaProRegular'),
                                    hintText: "Price",
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
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                width: 150,
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
                                    // _userNumber = value!;
                                  },
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'SofiaProRegular'),
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
                                        fontFamily: 'SofiaProRegular'),
                                    hintText: "Description",
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
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              padding: EdgeInsets.only(left: 10, right: 10),
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
                  // _userNumber = value!;
                },
                style: TextStyle(
                    color: Colors.grey, fontFamily: 'SofiaProRegular'),
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
                      color: Color(0xffbdbdbd), fontFamily: 'SofiaProRegular'),
                  hintText: "Service Number 1",
                  fillColor: Colors.white70,
                  enabledBorder: new OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffbdbdbd), width: 1),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(8.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 1),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              padding: EdgeInsets.only(left: 10, right: 10),
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
                  // _userNumber = value!;
                },
                style: TextStyle(
                    color: Colors.grey, fontFamily: 'SofiaProRegular'),
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
                      color: Color(0xffbdbdbd), fontFamily: 'SofiaProRegular'),
                  hintText: "Service Number 2",
                  fillColor: Colors.white70,
                  enabledBorder: new OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffbdbdbd), width: 1),
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(8.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black, width: 1),
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
    );
  }
}
