import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_ui/View/Onboard%20UI/03%20App%20explore/05%20appexplore1.dart';

class Detailscreen extends StatelessWidget {
  final routename = '/detailscreen';
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
                  '3',
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
              'Enter your name:',
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
                decoration: InputDecoration(
                  //contentPadding: EdgeInsetsGeometry.lerp(a, b, t),
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
                  hintText: 'Name',
                  hintStyle: GoogleFonts.mukta(
                    color: Colors.white.withOpacity(0.42),
                    fontWeight: FontWeight.w600,
                    fontSize: 60,
                    height: 0.1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Appexplore1().routename);
        },
        child: Text(
          'Finish',
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
