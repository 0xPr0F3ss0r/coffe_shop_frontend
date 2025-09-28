import 'package:flutter/material.dart';
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
            SizedBox(height: 20),
            Image.asset("assets/carbon_delivery_large.png"),
            Text(
              "Thank you for your order!\nWait for the call",
              style: GoogleFonts.lato(fontSize: 20, color: Color(0xFFD2AE82)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
