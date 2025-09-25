import 'package:coffe_shop_ui/constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:coffe_shop_ui/view/Pages/HomePage.dart';
import 'package:coffe_shop_ui/view/Pages/Profile.dart';
import 'package:coffe_shop_ui/view/Pages/Favourite.dart';
import 'package:coffe_shop_ui/view/Pages/Card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;
  final pages = [
    const HomePage(),
    const Profile(),
    const Favourite(),
    const CardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],

      bottomNavigationBar: CustomNavigationBar(context),
    );
  }

  // ignore: non_constant_identifier_names
  Container CustomNavigationBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.1, color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? Image.asset(
                    "assets/Home.png",
                    color: colors.navBarActive,
                    height: 18,
                    width: 16.8,
                  )
                : Image.asset(
                    "assets/Home.png",
                    color: colors.navBarDesactive,
                    height: 18,
                    width: 16.8,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? Icon(Icons.favorite, color: colors.navBarActive)
                : Icon(Icons.favorite, color: colors.navBarDesactive),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: -7,
                        right: -6,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                      Image.asset("assets/Vector.png"),
                    ],
                  )
                : Stack(
                    clipBehavior: Clip.none,

                    children: [
                      Image.asset(
                        "assets/Vector.png",
                        color: colors.navBarDesactive,
                      ),
                      Positioned(
                        top: -7,
                        right: -10,
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: colors.navBarActive,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "5",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? CircleAvatar(
                    maxRadius: 3,
                    backgroundColor: Colors.red,
                    child: Image.asset("assets/profile.png"),
                  )
                : CircleAvatar(
                    maxRadius: 22,
                    backgroundColor: Colors.transparent,

                    child: ClipOval(
                      child: SizedBox(
                        width: 35,
                        height: 35,
                        child: Image.asset(
                          "assets/profile.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
