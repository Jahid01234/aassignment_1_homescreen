import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSectionWidget extends StatelessWidget {
  const HeaderSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Rafsan",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize:20,
              ),
            ),
            Text(
              "Let’s watch today",
              style: GoogleFonts.roboto(
                  color: Colors.grey,
                  fontSize:14,
                  fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Image.asset(
          "assets/images/profile.png",
          height: 80,
          width: 110,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
