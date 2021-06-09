import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_ui/View/Onboard%20UI/03%20App%20explore/05%20appexplore4.dart';

class Appexplore3 extends StatelessWidget {
  final routename = '/appexplore3';
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
                  '3',
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
                    text: 'Create ',
                    style: GoogleFonts.hind(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      height: 1,
                    ),
                  ),
                  TextSpan(
                    text: 'groups.',
                    style: GoogleFonts.hind(
                      color: Color(0xffe6ae41),
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
                Navigator.of(context).pushNamed(Appexplore4().routename);
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
                'assets/images/step3.png',
                fit: BoxFit.fill,
                scale: 0.9,
              ),
            )
          ],
        ),
      ),
    );
  }
}
