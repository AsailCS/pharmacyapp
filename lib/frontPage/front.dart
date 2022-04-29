import 'dart:async';
import 'package:flutter/material.dart';
import '../main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyWidget())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "lib/assets/images/logo.png",
                  height: 200,
                  width: 200,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "PHARMACY",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Roboto',
                      letterSpacing: 1.5),
                ),
                Text(
                  "EXPRESS",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.yellow[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Roboto'),
                ),
              ],
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
