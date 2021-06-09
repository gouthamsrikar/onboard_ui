import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onboard_ui/View/Onboard%20UI/01%20OTP%20screen/01%20Enterpaynav.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacementNamed(Enterpaynav.routename);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0, 0.31, 0.56, 0.79, 0.9, 1],
            colors: [
              Color(0xff2E2B69),
              Color(0xff4A376A),
              Color(0xff774B6B),
              Color(0xff9B5A6C),
              Color(0xffB1646C),
              Color(0xffE2796E),
            ],
          ),
        ),
        child: Image.asset(
          'assets/images/paynavicon.png',
          fit: BoxFit.fill,
          scale: 2,
        ),
      ),
    );
  }
}

//background: linear-gradient(149.83deg, #2E2B69 18.38%, #4A376A 31.94%, #774B6B 56%, #9B5A6C 79.25%, #B1646C 97.78%, #E2796E 98.81%);
