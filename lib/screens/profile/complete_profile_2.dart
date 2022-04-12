import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goat/screens/profile/service_provider.dart';

class complete_p2 extends StatefulWidget {
  const complete_p2({Key? key}) : super(key: key);

  @override
  _complete_p2State createState() => _complete_p2State();
}

class _complete_p2State extends State<complete_p2> {
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  'Previous',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SofiaProRegular',
                      fontSize: 18),
                ),
              ),

              GestureDetector(
               onTap: (){
                 Get.to(() => service_provider());

               },
                child: Container(
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SofiaProRegular',
                        fontSize: 18),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

      body:  SingleChildScrollView(
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
                 
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
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
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    margin: EdgeInsets.only(left: 6),
                    alignment: Alignment.centerLeft,
                      child: Text(
                        'Living',
                        style: TextStyle(
                            fontFamily: 'boutrosBold',
                            fontSize: 16,
                            color: Colors.white),
                      )),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10,right: 10),

                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 13, left: 13,  ),
                      child: Container(
                        height: 410,
                        width: 500,
                        margin: EdgeInsets.only(top: 20),
                        child:             Column(
                          children:[


                          ],
                        ),

                      ),
                    ),

                  ],
                ),
              ),
            ),

       SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
