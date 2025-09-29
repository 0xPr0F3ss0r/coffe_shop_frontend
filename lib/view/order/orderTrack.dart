import 'package:coffe_shop_ui/view/order/TimeLine.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderTrack extends StatelessWidget {
  const OrderTrack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Row(
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
                    SizedBox(width: 40),
                    Text(
                      "Order Status Details",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                        color: Color(0xFF212220),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                TimeLine(
                  before: true,
                  after: true,
                  beforecolor: Color(0xFFCB8A58).withOpacity(0.3),
                  aftercolor: Color(0xFFCB8A58).withOpacity(0.3),

                  isFirst: true,
                  isLast: false,
                  image: Image.asset("assets/fi-ss-cube.png"),
                  status: 'Order Confirmed',
                  time: '11.00PM',
                ),
                TimeLine(
                  after: true,
                  before: true,
                  beforecolor: Color(0xFFCB8A58).withOpacity(0.3),

                  isFirst: false,
                  isLast: false,
                  image: Image.asset("assets/fi-ss-record-vinyl.png"),
                  status: 'Order Processed',
                  time: '10.00PM',
                ),
                TimeLine(
                  after: false,
                  before: false,
                  status: "On Delivery",
                  time: "12.00PM",
                  isFirst: false,
                  isLast: false,
                  image: Image.asset("assets/fi-ss-truck-side.png"),
                ),
                TimeLine(
                  after: false,
                  before: false,
                  status: "Order Completed",
                  time: "",
                  isFirst: false,
                  isLast: true,
                  image: Image.asset("assets/fi-ss-thumbs-up.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
