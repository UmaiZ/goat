import 'package:flutter/material.dart';
import 'package:goat/helpers/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double res_width = MediaQuery.of(context).size.width;
    double res_height = MediaQuery.of(context).size.height;
    double res_status = MediaQuery.of(context).viewPadding.top;

    return Container(
      child: Column(
        children: [
          SizedBox(
            height: res_status,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Row(
                  children: [
                    Icon(
                      Icons.menu_outlined,
                      size: 40,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Search',
                        style: TextStyle(
                            fontFamily: 'boutrosMedium', fontSize: 23)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 13),
                child: Row(
                  children: [
                    Icon(
                      Icons.search_outlined,
                      size: 40,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage('assets/images/jordan.jpg'),
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
              )
            ],
          ),
          Container(height: res_height * 0.02),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Image.asset('assets/images/banner1.png'),
              Image.asset('assets/images/banner1.png')
            ]),
          ),
          Container(height: res_height * 0.01),
          Container(
              width: res_width * 0.9,
              child: Text('Favorite Players Games',
                  style: TextStyle(
                      fontFamily: 'boutrosMedium',
                      fontSize: 20,
                      color: Colors.black))),
          Container(height: res_height * 0.01),
          Container(
            width: res_width * 0.9,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Image.asset('assets/images/player.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Player Name',
                          style: TextStyle(
                              fontFamily: 'boutrosMedium',
                              fontSize: 16,
                              color: kPrimaryColor))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Image.asset('assets/images/player.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Player Name',
                          style: TextStyle(
                              fontFamily: 'boutrosMedium',
                              fontSize: 16,
                              color: kPrimaryColor))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Image.asset('assets/images/player.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Player Name',
                          style: TextStyle(
                              fontFamily: 'boutrosMedium',
                              fontSize: 16,
                              color: kPrimaryColor))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    children: [
                      Image.asset('assets/images/player.png'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Player Name',
                          style: TextStyle(
                              fontFamily: 'boutrosMedium',
                              fontSize: 16,
                              color: kPrimaryColor))
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Container(height: res_height * 0.02),
        ],
      ),
    );
  }
}
