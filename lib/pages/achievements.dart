import 'package:flutter/material.dart';
import 'package:litelearn/helper/colors_theme.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class Achievements extends StatefulWidget {

  @override
  _AchievementsState createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F8FA),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 24, left: 24, right: 24, top: 48),
            child: Column(children: <Widget>[
              _shadowAppBar(),
              SizedBox(
                height: 32,
              ),
              _progressCourses(),
              SizedBox(
                height: 32,
              ),
              _achievementsTab()
            ]),
          ),
        ));
  }

  Widget _shadowAppBar() {
    return Center(
      child: Text('Achievements',
          style: TextStyle(
              color: ColorsTheme.text1,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times')),
    );
  }

  Widget _progressCourses() {
    return Container(
      height: 260,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          CircularPercentIndicator(
            radius: 150.0,
            animation: true,
            animationDuration: 1000,
            lineWidth: 20.0,
            percent: 0.9,
            center: new Text(
              "90%",
              style: TextStyle(color: Colors.greenAccent, fontSize: 30),
            ),
            progressColor: Colors.greenAccent,
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'You have completed 90% of your daily objective!',
            style: TextStyle(color: Colors.black, fontSize: 16),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  _achievementsTab() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      child: ClipRRect(
                        child: Image.asset('assets/images/flutter.png',
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        'Flutter',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Center(
                      child: Text(
                        '850 Points',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      child: ClipRRect(
                        child: Image.asset('assets/images/firebase.png',
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        'Base on Fire',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Center(
                      child: Text(
                        '300 Points',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      child: ClipRRect(
                        child: Image.asset('assets/images/kotlin.png',
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        'Kotlin',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Center(
                      child: Text(
                        '150 Points',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 100,
                      child: ClipRRect(
                        child: Image.asset('assets/images/react.png',
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Text(
                        'React Native',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Center(
                      child: Text(
                        '850 Points',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}