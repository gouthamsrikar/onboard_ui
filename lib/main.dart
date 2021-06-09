import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboard_ui/View/Onboard%20UI/01%20OTP%20screen/01%20Enterpaynav.dart';
import 'package:onboard_ui/View/Onboard%20UI/01%20OTP%20screen/02%20Mobilenumber.dart';
import 'package:onboard_ui/View/Onboard%20UI/01%20OTP%20screen/03%20otp.dart';
import 'package:onboard_ui/View/Onboard%20UI/02%20Details%20screen/04%20details.dart';
import 'package:onboard_ui/View/splash%20screen/splashscreen.dart';

import 'View/Onboard UI/03 App explore/05 appexplore1.dart';
import 'View/Onboard UI/03 App explore/05 appexplore2.dart';
import 'View/Onboard UI/03 App explore/05 appexplore3.dart';
import 'View/Onboard UI/03 App explore/05 appexplore4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Splashscreen(),
      theme: ThemeData(
        primaryColor: Color(0xff1a1443),
        accentColor: Color(0xff2E2B69),
      ),
      routes: {
        Enterpaynav.routename: (ctx) => Enterpaynav(),
        MobilenumberRegistraion().routename: (ctx) => MobilenumberRegistraion(),
        Otpscreen().routename: (ctx) => Otpscreen(),
        Detailscreen().routename: (ctx) => Detailscreen(),
        Appexplore1().routename: (ctx) => Appexplore1(),
        Appexplore2().routename: (ctx) => Appexplore2(),
        Appexplore3().routename: (ctx) => Appexplore3(),
        Appexplore4().routename: (ctx) => Appexplore4(),
      },
    );
  }
}
