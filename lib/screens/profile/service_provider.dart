// import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goat/helpers/colors.dart';
import 'package:goat/screens/profile/complete_profile_2.dart';
import 'package:goat/screens/profile/complete_profile_3.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class service_provider extends StatefulWidget {
  const service_provider({Key? key}) : super(key: key);

  @override
  _service_providerState createState() => _service_providerState();
}

class _service_providerState extends State<service_provider> {
  final ImagePicker _picker = ImagePicker();
  serviceController controller = Get.put(serviceController());

  getFromGallery() async {
    // ignore: deprecated_member_use
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      print(pickedFile);
      File imageFile = File(pickedFile.path);
      controller.addImage(imageFile);
      // imagesList[i] = imageFile;
    }
  }

  getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
      controller.addImage(imageFile);
      // imagesList[i] = imageFile;
    }
  }

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
        body: Obx((() => SingleChildScrollView(
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
                                width: double.infinity,
                                margin: EdgeInsets.only(top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
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
                                                color: Colors.grey,
                                                width: 1.25),
                                            borderRadius:
                                                const BorderRadius.all(
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
                                                color: Color(0xffbdbdbd),
                                                width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(8.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.black, width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
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
                                                color: Colors.grey,
                                                width: 1.25),
                                            borderRadius:
                                                const BorderRadius.all(
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
                                                color: Color(0xffbdbdbd),
                                                width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(8.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.black, width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
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
                                                color: Colors.grey,
                                                width: 1.25),
                                            borderRadius:
                                                const BorderRadius.all(
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
                                                color: Color(0xffbdbdbd),
                                                width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(8.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.black, width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
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
                                                color: Colors.grey,
                                                width: 1.25),
                                            borderRadius:
                                                const BorderRadius.all(
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
                                                color: Color(0xffbdbdbd),
                                                width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(8.0),
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.black, width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
                                              const Radius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    controller.imagesList.length != 0
                                        ? Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8,
                                                right: 8,
                                                top: 8,
                                                bottom: 13),
                                            child: Container(
                                              // height: 380,
                                              width: res_width - 50,
                                              child: SingleChildScrollView(
                                                child: Wrap(
                                                  runSpacing: 20,
                                                  spacing: 20,
                                                  children: List.generate(
                                                      controller.imagesList
                                                          .length, (index) {
                                                    return Container(
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            height: 140,
                                                            width: (res_width -
                                                                    100) /
                                                                3,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.2),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            20),
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .grey
                                                                        .withOpacity(
                                                                            0.2),
                                                                    width: 2)),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                              child: Image.file(
                                                                controller
                                                                        .imagesList[
                                                                    index],
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            bottom: 0,
                                                            right: 0,
                                                            child: controller
                                                                            .imagesList
                                                                            .length -
                                                                        1 ==
                                                                    index
                                                                ? GestureDetector(
                                                                    onTap: () {
                                                                      showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (BuildContext context) {
                                                                            return AlertDialog(
                                                                              title: Text(
                                                                                "Choose option",
                                                                                style: TextStyle(color: Colors.blue),
                                                                              ),
                                                                              content: SingleChildScrollView(
                                                                                child: ListBody(
                                                                                  children: [
                                                                                    Divider(
                                                                                      height: 1,
                                                                                      color: Colors.blue,
                                                                                    ),
                                                                                    ListTile(
                                                                                      onTap: () {
                                                                                        getFromGallery();
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      title: Text("Gallery"),
                                                                                      leading: Icon(
                                                                                        Icons.account_box,
                                                                                        color: Colors.blue,
                                                                                      ),
                                                                                    ),
                                                                                    Divider(
                                                                                      height: 1,
                                                                                      color: Colors.blue,
                                                                                    ),
                                                                                    ListTile(
                                                                                      onTap: () {
                                                                                        getFromCamera();
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      title: Text("Camera"),
                                                                                      leading: Icon(
                                                                                        Icons.camera,
                                                                                        color: Colors.blue,
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            );
                                                                          });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      width: 25,
                                                                      height:
                                                                          25,
                                                                      decoration: BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          gradient:
                                                                              LinearGradient(colors: [
                                                                            kPrimaryColor,
                                                                            kPrimaryColor
                                                                          ])),
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .add,
                                                                          size:
                                                                              16,
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  )
                                                                : Container(),
                                                          ),
                                                          Positioned(
                                                            bottom: 0,
                                                            left: 0,
                                                            child:
                                                                GestureDetector(
                                                              onTap: () {
                                                                controller
                                                                    .delete(
                                                                        index);
                                                              },
                                                              child: Container(
                                                                width: 25,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    gradient:
                                                                        LinearGradient(
                                                                            colors: [
                                                                          kPrimaryColor,
                                                                          kPrimaryColor
                                                                        ])),
                                                                child: Center(
                                                                  child: Icon(
                                                                    Icons
                                                                        .delete,
                                                                    size: 16,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    );
                                                  }),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  bottom: 20, left: 13),
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    height: 120,
                                                    width:
                                                        (res_width - 100) / 3,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey
                                                            .withOpacity(0.2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        border: Border.all(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.2),
                                                            width: 2)),
                                                    child: Icon(
                                                      Icons.image_outlined,
                                                      size: 80,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    bottom: 0,
                                                    right: 0,
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        showDialog(
                                                            context: context,
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                  "Choose option",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .blue),
                                                                ),
                                                                content:
                                                                    SingleChildScrollView(
                                                                  child:
                                                                      ListBody(
                                                                    children: [
                                                                      Divider(
                                                                        height:
                                                                            1,
                                                                        color: Colors
                                                                            .blue,
                                                                      ),
                                                                      ListTile(
                                                                        onTap:
                                                                            () {
                                                                          getFromGallery();
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        title: Text(
                                                                            "Gallery"),
                                                                        leading:
                                                                            Icon(
                                                                          Icons
                                                                              .account_box,
                                                                          color:
                                                                              Colors.blue,
                                                                        ),
                                                                      ),
                                                                      Divider(
                                                                        height:
                                                                            1,
                                                                        color: Colors
                                                                            .blue,
                                                                      ),
                                                                      ListTile(
                                                                        onTap:
                                                                            () {
                                                                          getFromCamera();
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        title: Text(
                                                                            "Camera"),
                                                                        leading:
                                                                            Icon(
                                                                          Icons
                                                                              .camera,
                                                                          color:
                                                                              Colors.blue,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            });
                                                      },
                                                      child: Container(
                                                        width: 25,
                                                        height: 25,
                                                        decoration: BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            gradient:
                                                                LinearGradient(
                                                                    colors: [
                                                                  kPrimaryColor,
                                                                  kPrimaryColor
                                                                ])),
                                                        child: Center(
                                                          child: Icon(
                                                            Icons.add,
                                                            size: 16,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: res_width * 0.8,
                        height: res_height * 0.08,
                        child: TextFormField(
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'boutrosMedium'),
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
                            hintText: "Service Number One",
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
                          child: Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 40,
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ))));
  }
}

class serviceController extends GetxController {
  RxList imagesList = [].obs;

  addImage(data) {
    print(data);
    imagesList.add(data);
    update();
  }

  delete(i) {
    imagesList.removeAt(i);
  }
}
