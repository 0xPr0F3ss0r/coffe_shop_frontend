import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/Profile2.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    pause: Duration(milliseconds: 500),
                    animatedTexts: [
                      TyperAnimatedText(
                        'Lora Roberts',
                        textStyle: GoogleFonts.baloo2(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.52,
                        ),
                        speed: Duration(seconds: 2),
                      ),
                    ],
                  ),
                  SizedBox(width: 5),
                  Image.asset("assets/edit-02.png"),
                ],
              ),
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                "Settings",
                style: GoogleFonts.mulish(
                  color: Color(0xFF212220),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Image.asset("assets/phoneL.png"),
                  SizedBox(width: 10),
                  Text(
                    "+380483746375",
                    style: GoogleFonts.baloo2(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 120),
                  Image.asset("assets/edit-02.png"),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Image.asset("assets/carbon_location-filled.png"),
                  SizedBox(width: 10),
                  Text(
                    "Ukraine, Ivano-Frankivsk, Kon...",
                    style: GoogleFonts.baloo2(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 20),
                  Image.asset("assets/edit-02.png"),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Image.asset("assets/shop.png"),
                  SizedBox(width: 10),
                  Text(
                    "My Cart",
                    style: GoogleFonts.baloo2(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 170),
                  Image.asset("assets/edit-02.png"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Lougout",
                    style: GoogleFonts.mulish(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Color(0xFFCB8A58),
                    ),
                  ),
                  SizedBox(width: 10),
                  Image.asset("assets/fi-ss-sign-in.png"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
