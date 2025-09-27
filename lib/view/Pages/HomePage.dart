// ignore: file_names
import 'package:coffe_shop_ui/constant/Colors.dart';
import 'package:coffe_shop_ui/widgets/Categories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/location.png"),
                SizedBox(width: 5),
                Text(
                  "Ukraine, Ivano-Frankivsk, Konovaltsya 132",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 45),
                Image.asset("assets/phone.png"),
              ],
            ),

            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: colors.searchContainer,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  width: 300,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/Search.png",
                          color: colors.searchIcon,
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search ..",
                              hintStyle: TextStyle(
                                fontSize: 12,
                                color: colors.hint,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Categories",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Categories(
                  textcolor: colors.categorieInActive,
                  name: "COFFEE",
                  image: "Coffe",
                  color: colors.categorieActive,
                ),
                SizedBox(width: 10),
                Categories(
                  textcolor: colors.inactive,
                  name: "DESSERTS",
                  image: "pancake",
                  color: colors.categorieInActive,
                ),
                SizedBox(width: 10),
                Categories(
                  textcolor: colors.inactive,
                  name: "JUS",
                  image: "jus",
                  color: colors.categorieInActive,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Categories(
                  textcolor: colors.inactive,
                  name: "JUS FREE",
                  image: "jus2",
                  color: colors.categorieInActive,
                ),
                SizedBox(width: 10),
                Categories(
                  textcolor: colors.inactive,
                  name: "BREAKFAST",
                  image: "breakfast",
                  color: colors.categorieInActive,
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 50, width: 50, color: Colors.blue),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
