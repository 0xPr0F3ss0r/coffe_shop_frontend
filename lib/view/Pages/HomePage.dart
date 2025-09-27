// ignore: file_names
import 'package:coffe_shop_ui/constant/Colors.dart';
import 'package:coffe_shop_ui/widgets/Categories.dart';
import 'package:coffe_shop_ui/widgets/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "assets/Frame 9.png",

    "assets/Rectangle9.png",
    "assets/Rectangle 1.png",
    "assets/Rectangle10.png",
  ];
  List<String> name = ["Cappuccino", "Americano", "Espresso", "Latte"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90, left: 35),
        child: ListView(
          children: [
            Column(
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

                SizedBox(height: 20),
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
                    SizedBox(width: 5),
                    Categories(
                      textcolor: colors.inactive,
                      name: "DESSERTS",
                      image: "pancake",
                      color: colors.categorieInActive,
                    ),
                    SizedBox(width: 5),
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
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                    height: 350,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 15,
                        childAspectRatio: 1.4,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: colors.greyCoffe,
                                  width: 0.5,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(images[index]),
                                        Positioned(
                                          top: -10,
                                          right: -10,
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      name[index],
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.aBeeZee(
                                        fontWeight: FontWeight.w400,
                                        height: 20 / 16,
                                      ),
                                    ),
                                    //SizedBox(height: 2),
                                    index == 0
                                        ? Row(
                                            children: [
                                              ...List.generate(3, (int index) {
                                                return sizeCoffe(
                                                  borderColor: colors.greyCoffe,
                                                  container: index == 0
                                                      ? colors.greyCoffe
                                                      : Colors.white,
                                                  textColor: index == 0
                                                      ? Colors.white
                                                      : colors.greyCoffe,
                                                  index: index,
                                                  text: ["S", "M", "L"],
                                                );
                                              }),
                                            ],
                                          )
                                        : index == 1
                                        ? Row(
                                            children: [
                                              ...List.generate(2, (int index) {
                                                return sizeCoffe(
                                                  borderColor: colors.greyCoffe,
                                                  container: index == 0
                                                      ? colors.greyCoffe
                                                      : Colors.white,
                                                  textColor: index == 0
                                                      ? Colors.white
                                                      : colors.greyCoffe,
                                                  text: ["S", "L"],
                                                  index: index,
                                                );
                                              }),
                                            ],
                                          )
                                        : index == 3
                                        ? Row(
                                            children: [
                                              ...List.generate(3, (int index) {
                                                return sizeCoffe(
                                                  borderColor: colors.greyCoffe,
                                                  container: index == 0
                                                      ? colors.greyCoffe
                                                      : Colors.white,
                                                  textColor: index == 0
                                                      ? Colors.white
                                                      : colors.greyCoffe,
                                                  index: index,
                                                  text: ["S", "M", "L"],
                                                );
                                              }),
                                            ],
                                          )
                                        : SizedBox.shrink(),
                                  ],
                                ),
                              ),
                              // Let GridView handle the sizing
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Text(
                                "${index == 0
                                    ? 3
                                    : index == 1
                                    ? 2.55
                                    : index == 2
                                    ? 2
                                    : 4}\$",
                                style: GoogleFonts.aBeeZee(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              right: 5,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: colors.greyCoffe,
                                ),
                                child: Center(
                                  child: Icon(Icons.add, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
