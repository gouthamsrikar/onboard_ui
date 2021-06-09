import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_ui/View/Onboard%20UI/01%20OTP%20screen/03%20otp.dart';

class MobilenumberRegistraion extends StatelessWidget {
  final routename = '/MobilenumberRegistraion';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Center(
            child: Row(
              children: [
                Text(
                  '1',
                  style: GoogleFonts.hind(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                Text(
                  ' of 3',
                  style: GoogleFonts.hind(
                    color: Colors.white.withOpacity(0.42),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                VerticalDivider(),
              ],
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your phone number:',
              style: GoogleFonts.hind(
                color: Colors.white.withOpacity(0.42),
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 50,
            ),
            SizedBox(
              width: size.width * 0.75,
              child: TextField(
                style: GoogleFonts.mukta(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 60,
                  height: 0.1,
                ),
                keyboardType: TextInputType.number,
                maxLength: 10,
                decoration: InputDecoration(
                  counterText: '',
                  //  contentPadding: EdgeInsets.only(right: size.width / 5),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.42),
                      width: 2,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white.withOpacity(0.42),
                      width: 2,
                    ),
                  ),
                  hintText: 'Number',
                  hintStyle: GoogleFonts.mukta(
                    color: Colors.white.withOpacity(0.42),
                    fontWeight: FontWeight.w600,
                    fontSize: 60,
                    height: 0.1,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            Text(
              'You will receive an SMS text message with a 6-digit \nOTP code.',
              style: GoogleFonts.hind(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 15,
                height: 1,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Otpscreen().routename);
        },
        child: Text(
          'Next',
          style: GoogleFonts.hind(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(3),
          alignment: Alignment.center,
          minimumSize: Size(100, 20),
          backgroundColor: Color(0xffE6AE41),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
