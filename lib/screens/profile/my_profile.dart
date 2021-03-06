import 'package:flutter/material.dart';

class my_profile extends StatefulWidget {
  const my_profile({Key? key}) : super(key: key);

  @override
  _my_profileState createState() => _my_profileState();
}

class _my_profileState extends State<my_profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      extendBodyBehindAppBar: true, // add this line
      appBar: AppBar(
        title: const Text("My Profile",
          style: TextStyle(color: Colors.white, fontFamily: 'boutrosMedium'),),
        actions: [
          Container(
            child: Align(child: Image.asset('assets/icons/ui.png')),
          ),
          SizedBox(width: 13,),
          Container(
            child: Align(child: Image.asset('assets/icons/noti.png')),
          ),
          SizedBox(width: 13,),

          Container(
            child: Align(
              child: CircleAvatar(
                radius: 13, //radius is 50
                backgroundImage: AssetImage(
                    'assets/icons/User.png'), //image url
              ),
            ),
          ),
          SizedBox(width: 15,),

        ],

        backgroundColor: Colors.transparent,
        leading: Image.asset("assets/icons/menu.png"),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/uni.png'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter

              ),

            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 100, left: 85),
            alignment: Alignment.center,
            child: Text('Ahmad Rahahleh',
              style: TextStyle(fontSize: 26, fontFamily: 'boutrosMedium'),),
          ),
          Container(
            padding: EdgeInsets.only(top: 150,right: 50),
            alignment: Alignment.center,
            child: Text('Fan', style: TextStyle(fontSize: 19,
                fontFamily: 'boutrosMedium',
                color: Colors.grey),),
          ),
          Container(
            margin: EdgeInsets.only(top: 420, left: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(140),
              boxShadow: [
                BoxShadow(

                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(0, 0),
                  spreadRadius: 6,

                )
                ,

              ],
            ),
            child: CircleAvatar(

              radius: 50,
              backgroundImage: AssetImage("assets/images/mask.png"),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 560),
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
          Container(
            margin: EdgeInsets.only(top: 620),

            child: TabBarView(

              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 250,
                  width: size.width,
                  child: SingleChildScrollView(
                    // reverse: true,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              height: 75,
                              width: 75,
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
                        Container(
                          width: size.width,

                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: ListView.builder(
                                itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder:
                                    (BuildContext context, int index) {
                                  return Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        height: 90,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color(0xffba42f2),
                                              Color(0xff42b5f2),
                                            ],
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        child: Stack(
                                          children: [
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 10),

                                        child: Text(
                                          'Working',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),

                                    ],

                                  );
                                }),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),


                Text('Person'), Text('Person'), Text('Person'), Text('Person')],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}