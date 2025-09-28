import 'package:coffe_shop_ui/controller.dart/navigationController.dart';
import 'package:coffe_shop_ui/widgets/navigationBar.dart';
import 'package:flutter/material.dart';
import 'package:coffe_shop_ui/view/Pages/HomePage.dart';
import 'package:coffe_shop_ui/view/Pages/Profile.dart';
import 'package:coffe_shop_ui/view/Pages/Favourite.dart';
import 'package:coffe_shop_ui/view/Pages/Card.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Navigationcontroller navigatecontroller = Get.put(Navigationcontroller());
  final pages = [
    const HomePage(),
    const Favourite(),
    const CardPage(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[navigatecontroller.pageIndex.value],

        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}
