import 'package:coffe_shop_ui/constant/Colors.dart';
import 'package:coffe_shop_ui/view/ProductInfo/productInfoFav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  List<String> images = [
    "assets/first.png",
    "assets/second.png",
    "assets/BeforeLast.png",
    "assets/last.png",
  ];
  List<String> names = ["tuna salad", "White Wine", "Espresso", "profiterol"];
  List<String> prices = ["14.22\$", "20.45\$", "2\$", "1\$"];
  List<String> rating = ["4.8", "4.4", "4.7", "4.8"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 90, right: 20, left: 20),
        children: [
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
          const SizedBox(height: 40),
          ...List.generate(4, (int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(ProductinfoFav());
                    },
                    child: Container(
                      width: 346,
                      height: 90,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF000000).withOpacity(0.25),
                            offset: const Offset(0, 0),
                            blurRadius: 4,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(images[index]),
                            SizedBox(width: 5),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(names[index]),
                                SizedBox(height: 5),
                                Text(prices[index]),
                                SizedBox(height: 5),
                                Icon(Icons.favorite, color: Colors.red),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 10,
                    child: Row(
                      children: [
                        Image.asset("assets/smallStar.png"),
                        Text(
                          rating[index],
                          style: TextStyle(color: Color(0xFF000000)),
                        ),
                      ],
                    ),
                  ),
                  index != 3
                      ? Positioned(
                          right: 10,
                          bottom: 5,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ),
                        )
                      : Positioned(
                          right: 10,
                          bottom: 5,
                          child: Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "8",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 5),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
