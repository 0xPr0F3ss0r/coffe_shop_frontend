import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:coffe_shop_ui/view/order/orderCreated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class orderCard extends StatefulWidget {
  const orderCard({super.key});

  @override
  State<orderCard> createState() => _orderCardState();
}

class _orderCardState extends State<orderCard> {
  List<String> images = ["assets/last.png", "assets/BeforeLast.png"];
  List<String> names = ["profiterol", "Espresso"];
  List<String> prices = ["1\$", "2\$"];
  List<String> rating = ["4.8", "4.7"];
  var items = ['ApplePay', 'VISA/MasterCard', 'Cash'];
  String dropdownvalue = 'ApplePay';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 10),
                      AnimatedTextKit(
                        repeatForever: true,
                        pause: Duration(milliseconds: 500),
                        animatedTexts: [
                          TyperAnimatedText(
                            "YOUR ORDER:",
                            textStyle: GoogleFonts.oswald(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF000000),
                              fontSize: 17,
                            ),
                            speed: Duration(seconds: 2),
                          ),
                        ],
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
                                      color: Color(
                                        0xFF000000,
                                      ).withOpacity(0.25),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(images[index]),
                                      SizedBox(width: 5),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                              ).animate(
                                onPlay: (controller) =>
                                    controller.repeat(reverse: true),
                                effects: [
                                  FadeEffect(
                                    begin: 1.0,
                                    end: 0.2,
                                    curve: Curves.easeInQuart,
                                    delay: Duration(seconds: 1),
                                    duration: Duration(seconds: 3),
                                  ),
                                  ShimmerEffect(
                                    blendMode: BlendMode.hardLight,
                                    delay: Duration(seconds: 1),
                                  ),
                                ],
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
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                      ),
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
                        ],
                      ),
                      SizedBox(height: 25),
                      Text("Payment method:"),
                      SizedBox(height: 30),
                      Container(
                        width: 500,
                        height: 50,
                        color: Color(0xFFD9D9D9),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            children: [
                              Image.asset(
                                dropdownvalue == items[0]
                                    ? "assets/gplay.png"
                                    : dropdownvalue == items[1]
                                    ? "assets/masterCard.png"
                                    : "assets/cash.png",
                                height: dropdownvalue != items[1] ? 20 : 14,
                              ),
                              SizedBox(width: 10),
                              Text(
                                dropdownvalue,
                                style: GoogleFonts.oswald(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              Spacer(),
                              DropdownButton(
                                //         value: dropdownvalue,
                                underline: SizedBox.shrink(),
                                // Down Arrow Icon
                                icon: const Icon(Icons.keyboard_arrow_down),

                                // Array list of items
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                // After selecting the desired option,it will
                                // change button value to selected value
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownvalue = newValue!;
                                  });
                                  print(dropdownvalue);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 140),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AnimatedTextKit(
                            repeatForever: true,
                            pause: Duration(milliseconds: 500),
                            animatedTexts: [
                              TyperAnimatedText(
                                "Total: 14\$",
                                textAlign: TextAlign.end,
                                textStyle: GoogleFonts.oswald(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF000000),
                                  fontSize: 17,
                                ),
                                speed: Duration(seconds: 5),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(orderCreated());
                  },
                  child:
                      Container(
                        height: 80,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: BoxDecoration(color: Colors.black),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 22, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Create Order",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),

                              Spacer(),
                              IconButton(
                                alignment: AlignmentDirectional.centerEnd,
                                onPressed: () {
                                  Get.to(orderCreated());
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).animate(
                        onInit: (controller) => controller = controller,
                        delay: Duration(seconds: 1),
                        onPlay: (controller) =>
                            controller.repeat(reverse: true),
                        effects: [
                          ShimmerEffect(
                            blendMode: BlendMode.hardLight,
                            delay: Duration(seconds: 1),
                          ),
                        ],
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
