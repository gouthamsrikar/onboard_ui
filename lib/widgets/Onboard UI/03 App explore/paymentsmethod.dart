import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Paymentmethodicons extends StatelessWidget {
  final String image;
  final String name;
  Paymentmethodicons({this.image, this.name});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
            height: 40,
            width: 40,
          ),
        ),
        VerticalDivider(color: Colors.transparent),
        Text(
          name,
          style: GoogleFonts.hind(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
