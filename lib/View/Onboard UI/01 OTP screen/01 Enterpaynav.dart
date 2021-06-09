import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_ui/View/Onboard%20UI/01%20OTP%20screen/02%20Mobilenumber.dart';

class Enterpaynav extends StatelessWidget {
  static const routename = '/enterpaynav';
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Padding(
        padding: EdgeInsets.only(
            left: 20, right: size.width * 0.2, top: 50, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/paynavicon.png',
              fit: BoxFit.fill,
              scale: 3,
            ),
            SizedBox(
              height: size.height / 2.5,
            ),
            Text(
              'Spend with\nyour friends.',
              style: GoogleFonts.hind(
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                height: 0.9,
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(MobilenumberRegistraion().routename);
              },
              child: Text(
                'Enter paynav',
                style: GoogleFonts.hind(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(3),
                alignment: Alignment.center,
                minimumSize: Size(150, 20),
                backgroundColor: Color(0xffE6AE41),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            Spacer(),
            Text(
              'By entering, you agree to PayNav’s Terms of Service and Privacy Policy.',
              style: GoogleFonts.hind(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                height: 1.2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
