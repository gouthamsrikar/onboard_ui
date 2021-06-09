import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_ui/View/Onboard%20UI/02%20Details%20screen/04%20details.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Otpscreen extends StatelessWidget {
  var textcontroll = TextEditingController();
  final routename = '/otpscreen';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Center(
            child: Row(
              children: [
                Text(
                  '2',
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
          )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please enter the 6-digit code:',
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
            Divider(
              color: Colors.transparent,
            ),
            Text(
              'Code was sent via SMS to 9619002000. Didn’t receive the code? Resend.',
              style: GoogleFonts.hind(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 15,
                height: 1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Detailscreen().routename);
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
