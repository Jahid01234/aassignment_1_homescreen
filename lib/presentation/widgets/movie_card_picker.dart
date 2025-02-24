import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieCardPicker extends StatelessWidget {
  final String image;
  final String text;
  final double? height;
  final double? width;
  final BoxFit? fit;

  const MovieCardPicker({
    super.key,
    this.height,
    this.width,
    this.fit,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height ?? 127,
          width: width ?? 99,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: fit ?? BoxFit.cover,
              ),
          ),
        ),

        Wrap(
          alignment: WrapAlignment.start,
          children: [
            SizedBox(
              width: width ?? 99,
              child: Text(
                text,
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
