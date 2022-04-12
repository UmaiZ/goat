// import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goat/helpers/colors.dart';
import 'package:goat/screens/profile/complete_profile_2.dart';
import 'package:goat/screens/profile/complete_profile_4.dart';

class complete_p3 extends StatefulWidget {
  const complete_p3({Key? key}) : super(key: key);

  @override
  _complete_p3State createState() => _complete_p3State();
}

class _complete_p3State extends State<complete_p3> {
  late String selectedValue;
  profile3Controller controller = Get.put(profile3Controller());

  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {
            Get.to(() => complete_p4());
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
                        'Rate your skills (Be Real)',
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
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Speed',
                        style: TextStyle(
                            fontFamily: 'boutrosMedium', fontSize: 20)),
                    Obx(() => Container(
                          width: res_width * 0.7,
                          child: RangeSlider(
                            activeColor: kPrimaryColor,
                            values: RangeValues(0, controller.speedEnd.value),
                            max: 100,
                            divisions: 5,
                            labels: RangeLabels(
                              '0',
                              controller.speedEnd.round().toString(),
                            ),
                            onChanged: (RangeValues values) {
                              // print(controller.speed.obs);
                              controller.updatespeed(values.end, 'speed');
                            },
                          ),
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Shooting',
                        style: TextStyle(
                            fontFamily: 'boutrosMedium', fontSize: 20)),
                    Obx(() => Container(
                          width: res_width * 0.7,
                          child: RangeSlider(
                            activeColor: kPrimaryColor,
                            values:
                                RangeValues(0, controller.shootingEnd.value),
                            max: 100,
                            divisions: 5,
                            labels: RangeLabels(
                              '0',
                              controller.shootingEnd.round().toString(),
                            ),
                            onChanged: (RangeValues values) {
                              // print(controller.speed.obs);
                              controller.updatespeed(values.end, 'shooting');
                            },
                          ),
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Dribbling',
                        style: TextStyle(
                            fontFamily: 'boutrosMedium', fontSize: 20)),
                    Obx(() => Container(
                          width: res_width * 0.7,
                          child: RangeSlider(
                            activeColor: kPrimaryColor,
                            values:
                                RangeValues(0, controller.dribblingEnd.value),
                            max: 100,
                            divisions: 5,
                            labels: RangeLabels(
                              '0',
                              controller.dribblingEnd.round().toString(),
                            ),
                            onChanged: (RangeValues values) {
                              // print(controller.speed.obs);
                              controller.updatespeed(values.end, 'dribbling');
                            },
                          ),
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Passing',
                        style: TextStyle(
                            fontFamily: 'boutrosMedium', fontSize: 20)),
                    Obx(() => Container(
                          width: res_width * 0.7,
                          child: RangeSlider(
                            activeColor: kPrimaryColor,
                            values: RangeValues(0, controller.passingEnd.value),
                            max: 100,
                            divisions: 5,
                            labels: RangeLabels(
                              '0',
                              controller.passingEnd.round().toString(),
                            ),
                            onChanged: (RangeValues values) {
                              // print(controller.speed.obs);
                              controller.updatespeed(values.end, 'passing');
                            },
                          ),
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Grinta',
                        style: TextStyle(
                            fontFamily: 'boutrosMedium', fontSize: 20)),
                    Obx(() => Container(
                          width: res_width * 0.7,
                          child: RangeSlider(
                            activeColor: kPrimaryColor,
                            values: RangeValues(0, controller.grintaEnd.value),
                            max: 100,
                            divisions: 5,
                            labels: RangeLabels(
                              '0',
                              controller.grintaEnd.round().toString(),
                            ),
                            onChanged: (RangeValues values) {
                              // print(controller.speed.obs);
                              controller.updatespeed(values.end, 'grinta');
                            },
                          ),
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Defense',
                        style: TextStyle(
                            fontFamily: 'boutrosMedium', fontSize: 20)),
                    Obx(() => Container(
                          width: res_width * 0.7,
                          child: RangeSlider(
                            activeColor: kPrimaryColor,
                            values: RangeValues(0, controller.defenseEnd.value),
                            max: 100,
                            divisions: 5,
                            labels: RangeLabels(
                              '0',
                              controller.defenseEnd.round().toString(),
                            ),
                            onChanged: (RangeValues values) {
                              // print(controller.speed.obs);
                              controller.updatespeed(values.end, 'defense');
                            },
                          ),
                        ))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Stamina',
                        style: TextStyle(
                            fontFamily: 'boutrosMedium', fontSize: 20)),
                    Obx(() => Container(
                          width: res_width * 0.7,
                          child: RangeSlider(
                            activeColor: kPrimaryColor,
                            values: RangeValues(0, controller.staminaEnd.value),
                            max: 100,
                            divisions: 5,
                            labels: RangeLabels(
                              '0',
                              controller.staminaEnd.round().toString(),
                            ),
                            onChanged: (RangeValues values) {
                              // print(controller.speed.obs);
                              controller.updatespeed(values.end, 'stamina');
                            },
                          ),
                        ))
                  ],
                )
              ],
            ),
            Divider(color: Colors.black,),
            Obx(() => Text(
                  'Average Rate ${controller.countAverage()} / 100',
                  style: TextStyle(fontFamily: 'boutrosMedium', fontSize: 21),
                ))
          ],
        ),
      ),
    );
  }
}

class profile3Controller extends GetxController {
  RxDouble speedStart = 0.0.obs;

  RxDouble speedEnd = 50.0.obs;
  RxDouble shootingEnd = 50.0.obs;
  RxDouble dribblingEnd = 50.0.obs;
  RxDouble passingEnd = 50.0.obs;
  RxDouble grintaEnd = 50.0.obs;
  RxDouble defenseEnd = 50.0.obs;
  RxDouble staminaEnd = 50.0.obs;

  updatespeed(double val, type) {
    print(val);
    if (type == "speed") {
      speedEnd.value = val;
    }
    if (type == "shooting") {
      shootingEnd.value = val;
    }
    if (type == "dribbling") {
      dribblingEnd.value = val;
    }
    if (type == "passing") {
      passingEnd.value = val;
    }
    if (type == "grinta") {
      grintaEnd.value = val;
    }
    if (type == "defense") {
      defenseEnd.value = val;
    }

    if (type == "stamina") {
      staminaEnd.value = val;
    }
    update();
  }

  countAverage() {
    var count = speedEnd.value +
        shootingEnd.value +
        dribblingEnd.value +
        passingEnd.value +
        grintaEnd.value +
        defenseEnd.value +
        staminaEnd.value +
        staminaEnd.value;

    count = count * 100 / 800;
    return count.toString();
  }
}
