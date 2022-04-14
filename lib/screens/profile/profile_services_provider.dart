import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goat/screens/profile/my_profile.dart';

class profile_sp extends StatefulWidget {
  const profile_sp({Key? key}) : super(key: key);

  @override
  _profile_spState createState() => _profile_spState();
}

class _profile_spState extends State<profile_sp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true, // add this line
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(color: Colors.white, fontFamily: 'boutrosMedium'),
        ),
        actions: [
          Container(
            child: Align(child: Image.asset('assets/icons/ui.png')),
          ),
          SizedBox(
            width: 13,
          ),
          Container(
            child: Align(child: Image.asset('assets/icons/noti.png')),
          ),
          SizedBox(
            width: 13,
          ),
          GestureDetector(
            onTap: () {
              Get.to(my_profile());
            },
            child: Container(
              child: Align(
                child: CircleAvatar(
                  radius: 13, //radius is 50
                  backgroundImage:
                      AssetImage('assets/icons/User.png'), //image url
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: Colors.transparent,
        leading: Image.asset("assets/icons/menu.png"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: res_height * 0.35,
            decoration: BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                  image: AssetImage('assets/images/sa.jpg'),
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter),
            ),
          ),
          SizedBox(
            height: res_height * 0.035,
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(140),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: Offset(0, 0),
                            spreadRadius: 6,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage("assets/images/mask.png"),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          // margin: EdgeInsets.only(top: 100, left: 80),
                          alignment: Alignment.center,
                          child: Text(
                            'Ahmad Rahahleh',
                            style: TextStyle(
                                fontSize: 26, fontFamily: 'boutrosMedium'),
                          ),
                        ),
                        Container(
                          // padding: EdgeInsets.only(top: 150, left: 28),
                          alignment: Alignment.center,
                          child: Text(
                            'Service Provider',
                            style: TextStyle(
                                fontSize: 19,
                                fontFamily: 'boutrosMedium',
                                color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: res_height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/icons/icon.png',
                          height: 18,
                          width: 20,
                        ),
                      ),
                      Container(
                        child: Text(
                          '4.2 (126)',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Image.asset('assets/icons/call.png'),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/icons/Direction.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Image.asset('assets/icons/chat.png'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: res_height * 0.01,
                ),
                Container(
                  child: TabBar(
                    automaticIndicatorColorAdjustment: true,
                    indicatorColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.green,
                    tabs: [
                      Tab(
                        text: 'Gallery',
                      ),
                      Tab(
                        text: 'Services',
                      ),
                      Tab(
                        text: 'Games',
                      ),
                      Tab(
                        text: 'Team',
                      ),
                      Tab(
                        text: 'Players',
                      )
                    ],
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                  ),
                ),
                SizedBox(
                  height: res_height * 0.01,
                ),
                Container(
                  height: 250,
                  child: TabBarView(
                    children: [
                      Wrap(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                height: 75,
                                width: res_width * 0.25,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/icons/group.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GridWidget('Gallery'),
                          GridWidget('Gallery'),
                          GridWidget('Gallery'),
                          GridWidget('Gallery'),
                        ],
                      ),
                Wrap(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                height: 75,
                                width: res_width * 0.25,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/icons/group.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          GridWidget('Service'),
                          GridWidget('Service'),
                          GridWidget('Service'),
                          GridWidget('Service'),
                        ],
                      ),                      Text('Person'),
                      Text('Person'),
                      Text('Person')
                    ],
                    controller: _tabController,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget GridWidget(text) {
    double res_width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: 90,
          width: res_width * 0.25,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xffba42f2),
                Color(0xff42b5f2),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Text(
            '${text}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
