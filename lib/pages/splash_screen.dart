import 'dart:async';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:litelearn/helper/colors_theme.dart';
import 'package:litelearn/pages/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  timerCheck() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    timerCheck();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              LineAwesomeIcons.book,
              color: ColorsTheme.primary1,
              size: 82,
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'LiteLearn',
              style: TextStyle(
                  color: ColorsTheme.text1,
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  fontFamily: 'Times'),
            )
          ],
        ),
      ),
    );
  }
}
