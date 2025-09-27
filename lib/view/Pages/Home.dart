import 'package:coffe_shop_ui/widgets/navigationBar.dart';
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
    const Favourite(),
    const Profile(),

    const CardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],

      bottomNavigationBar: CustomNavigationBar(initialPageIndex: pageIndex),
    );
  }
}
