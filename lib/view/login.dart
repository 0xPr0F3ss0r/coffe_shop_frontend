import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // top image
          Positioned(
            top: 35,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: ClipPath(
                clipper: TopWaveClipper(),
                child: Opacity(
                  opacity: 0.9,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      const Color(0XFFB19E90).withOpacity(0.6), // اللون المطلوب
                      BlendMode.modulate, // أو جرب BlendMode.modulate
                    ),
                    child: Image.asset("assets/buttonlogin1.png"),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: ClipPath(
                clipper: BottomWaveClipper(),
                child: Opacity(
                  opacity: 0.9,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      const Color(0XFFB19E90).withOpacity(0.6), // اللون المطلوب
                      BlendMode.modulate, // أو جرب BlendMode.modulate
                    ),
                    child: Image.asset(
                      "assets/buttonlogin1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Main form container
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const SizedBox(height: 120),

                  // Welcome text
                  const Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3748),
                      fontSize: 36,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Login to your account.",
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      color: const Color(0xFF718096),
                    ),
                  ),

                  const SizedBox(height: 60),

                  // Username field
                  const Text(
                    "Username",
                    style: TextStyle(
                      color: Color(0xFF4A5568),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFCB8A58)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Phone Number field
                  const Text(
                    "Phone Number",
                    style: TextStyle(
                      color: Color(0xFF4A5568),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFE2E8F0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFCB8A58)),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                    ),
                  ),

                  const SizedBox(height: 48),

                  // Login button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle login logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB8956A),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 150),
                ],
              ),
            ),
          ),
          // Example: Add a logo or floating widget above the form
          // Positioned(
          //   top: 40,
          //   child: CircleAvatar(
          //     radius: 40,
          //     backgroundColor: Colors.brown[200],
          //     child: Icon(Icons.coffee, size: 48, color: Colors.white),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // البداية من أسفل اليسار
    path.moveTo(0, size.height);

    // خط إلى بداية الشكل المطلوب (مستوى عالي - اقتصاص أقل)
    path.lineTo(0, size.height * 0.2);

    // شكل الوادي (منحنى للأسفل - اقتصاص أكثر)
    path.quadraticBezierTo(
      size.width * 0.30, // نقطة التحكم - وسط الوادي
      size.height * 0.90, // عمق الوادي للأسفل (اقتصاص أكثر)
      size.width * 0.50, // نهاية الوادي
      size.height * 0.7, // العودة للمستوى الأصلي
    );

    // شكل الجبل (منحنى للأعلى - اقتصاص أقل)
    path.quadraticBezierTo(
      size.width * 0.70, // نقطة التحكم - قمة الجبل
      size.height * 0.6, // ارتفاع قمة الجبل (اقتصاص أقل)
      size.width * 0.9, // نهاية الجبل قبل الحافة اليمنى
      size.height, // الجبل ينتهي في مستوى منخفض
    );

    // خط مستقيم للحافة اليمنى
    // path.lineTo(size.width * 0.85, size.height);
    path.lineTo(size.width, size.height); // خط لأسفل اليمين
    path.close(); // إغلاق المسار

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // البداية من أعلى اليسار
    path.moveTo(0, 0);

    // خط لأعلى اليمين
    path.lineTo(size.width, 0);

    // خط للأسفل - بداية الشكل
    path.lineTo(size.width, size.height * 0.2);

    // الجبل الأول (يبدأ من اليمين)
    path.quadraticBezierTo(
      size.width * 0.78, // نقطة التحكم - قمة الجبل الأول
      size.height * 0.7, // ارتفاع قمة الجبل الأول (اقتصاص أكثر)
      size.width * 0.62, // نهاية الجبل الأول
      size.height * 0.3, // النزول من الجبل الأول
    );

    // الوادي (منحنى للأسفل)
    path.quadraticBezierTo(
      size.width * 0.55, // نقطة التحكم - وسط الوادي
      size.height * 0.2, // عمق الوادي (اقتصاص أقل)
      size.width * 0.4, // نهاية الوادي
      size.height * 0.4, // الصعود من الوادي
    );

    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.6, // control point (higher for a mountain)
      size.width * 0.04,
      size.height * 0.12, // end point (left edge)
    );

    path.quadraticBezierTo(
      size.width * 0.02,
      size.height * 0.1,
      0,
      size.height * 0.098,
    );

    // // إغلاق المسار
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
