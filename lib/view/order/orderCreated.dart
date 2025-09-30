import 'package:coffe_shop_ui/view/order/orderTrack.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class orderCreated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C2C2C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            SizedBox(height: 150),
            Image.asset("assets/carbon_delivery_large.png"),
            Text(
              "Thank you for your order!\nWait for the call",
              style: GoogleFonts.lato(fontSize: 20, color: Color(0xFFD2AE82)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 120),
            GestureDetector(
              onTap: () {
                Get.to(OrderTrack());
              },
              child:
                  Container(
                    width: 312,
                    height: 61,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      gradient: LinearGradient(
                        colors: [Color(0xFFCB8A58), Color(0xFF562B1A)],
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Track Your Order",
                        style: GoogleFonts.inter(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ).animate(
                    onInit: (controller) => controller = controller,
                    delay: Duration(seconds: 1),
                    onPlay: (controller) => controller.repeat(reverse: true),
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
    );
  }
}
