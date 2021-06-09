import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_ui/View/Onboard%20UI/03%20App%20explore/05%20appexplore2.dart';
import 'package:flutter/animation.dart';
import 'package:onboard_ui/View/Onboard%20UI/03%20App%20explore/05%20appexplore3.dart';
import 'package:page_transition/page_transition.dart';

class Appexplore1 extends StatelessWidget {
  final routename = '/appexplore1';
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
                  '1',
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
                    text: 'Add your ',
                    style: GoogleFonts.hind(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      height: 1,
                    ),
                  ),
                  TextSpan(
                    text: 'friends to\ntransactions ',
                    style: GoogleFonts.hind(
                      color: Color(0xffe6ae41),
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      height: 1,
                    ),
                  ),
                  TextSpan(
                    text: 'and set up\npaybacks on the go.',
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
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        Appexplore2(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      var begin = Offset(1, 0);
                      var end = Offset(0, 0);
                      var tween = Tween(begin: begin, end: end);
                      var offsetAnimation = animation.drive(tween);

                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                  ),
                );
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
            Spacer(),
            Center(
              child: Image.asset(
                'assets/images/step1.png',
                fit: BoxFit.fill,
                scale: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
