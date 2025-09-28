import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../order/orderCard.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  List<String> images = ["assets/last.png", "assets/BeforeLast.png"];
  List<String> names = ["profiterol", "Espresso"];
  List<String> prices = ["1\$", "2\$"];
  List<String> rating = ["4.8", "4.7"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 270),
                  child: Image.asset("assets/carbon_delivery.png"),
                ),
                SizedBox(height: 10),
                Text(
                  "YOUR ORDER:",
                  style: GoogleFonts.oswald(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF000000),
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 25),
                ...List.generate(2, (int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Stack(
                      children: [
                        Container(
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
                                    Text(
                                      prices[index],
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          right: 10,
                          child: Row(
                            children: [
                              Image.asset("assets/smallStar.png"),
                              SizedBox(width: 3),
                              Text(
                                rating[index],
                                style: TextStyle(color: Color(0xFF000000)),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 10,
                          bottom: 10,
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
                                index == 0 ? "8" : "2",
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
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Total: 14\$",
                      textAlign: TextAlign.end,
                      style: GoogleFonts.oswald(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF000000),
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 220),

                InkWell(
                  onTap: () {
                    Get.to(orderCard());
                  },
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Go to Cart",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),

                          Spacer(),
                          IconButton(
                            alignment: AlignmentDirectional.centerEnd,
                            onPressed: () {
                              Get.to(orderCard());
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
