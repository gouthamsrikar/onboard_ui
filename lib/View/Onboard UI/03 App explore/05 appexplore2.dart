import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_ui/View/Onboard%20UI/03%20App%20explore/05%20appexplore3.dart';
import 'package:onboard_ui/widgets/Onboard%20UI/03%20App%20explore/paymentsmethod.dart';

class Appexplore2 extends StatelessWidget {
  final routename = '/appexplore2';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/paynavicon.png',
                  fit: BoxFit.fill,
                  scale: 3,
                ),
                Spacer(),
                Text(
                  '2',
                  style: GoogleFonts.hind(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                Text(
                  ' of 4',
                  style: GoogleFonts.hind(
                    color: Colors.white.withOpacity(0.42),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            Text(
              '4 things to do with PayNav:',
              style: GoogleFonts.hind(
                color: Colors.white.withOpacity(0.42),
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Choose ',
                    style: GoogleFonts.hind(
                      color: Color(0xffe6ae41),
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      height: 1,
                    ),
                  ),
                  TextSpan(
                    text: 'how you want\nto pay.',
                    style: GoogleFonts.hind(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.transparent,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Appexplore3().routename);
              },
              child: Text(
                'Next',
                style: GoogleFonts.hind(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(2),
                alignment: Alignment.center,
                minimumSize: Size(120, 20),
                backgroundColor: Color(0xffE6AE41),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            Paymentmethodicons(
              image: 'assets/icons/paytm.png',
              name: 'Paytm',
            ),
            Divider(color: Colors.transparent),
            Paymentmethodicons(
              image: 'assets/icons/gpay.png',
              name: 'Google pay',
            ),
            Divider(color: Colors.transparent),
            Paymentmethodicons(
              image: 'assets/icons/phonepe.png',
              name: 'Phone Pe',
            ),
            Divider(color: Colors.transparent),
            Paymentmethodicons(
              image: 'assets/icons/cash.png',
              name: 'Cash',
            ),
          ],
        ),
      ),
    );
  }
}
