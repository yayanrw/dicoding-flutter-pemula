import 'package:flutter/material.dart';
import 'package:litelearn/helper/colors_theme.dart';
import 'package:litelearn/widget/bezier_container.dart';


class CourseDetail extends StatefulWidget {
  final course_title;

  CourseDetail({@required this.course_title});

  @override
  _CourseDetailState createState() => _CourseDetailState(course_title: course_title);
}

class _CourseDetailState extends State<CourseDetail> {
  final course_title;

  _CourseDetailState({@required this.course_title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
              Positioned(
                  top: -MediaQuery.of(context).size.height * .30,
                  right: -MediaQuery.of(context).size.width * .4,
                  child: BezierContainer()),
              Positioned(top: 40, left: 0, child: _backButton()),
              Padding(
                padding: EdgeInsets.only(bottom: 24, left: 24, right: 24, top: 48),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(course_title,
                          style: TextStyle(
                              color: ColorsTheme.text1,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Times')),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 290,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 40,
                                      child: ClipRRect(
                                        child: Image.asset('assets/images/swift.png',
                                            fit: BoxFit.fitHeight),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Completed 18% of the Swift Essentials Courses',
                                        style: TextStyle(
                                          color: ColorsTheme.text1.withOpacity(0.8),
                                          height: 1.5,
                                          fontSize: 14,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 40,
                                      child: ClipRRect(
                                        child: Image.asset('assets/images/github.png',
                                            fit: BoxFit.fitHeight),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Started the Git essentials course',
                                        style: TextStyle(
                                          color: ColorsTheme.text1.withOpacity(0.8),
                                          height: 1.5,
                                          fontSize: 14,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 40,
                                      child: ClipRRect(
                                        child: Image.asset('assets/images/phyton.png',
                                            fit: BoxFit.fitHeight),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Started the advance phyton course',
                                        style: TextStyle(
                                          color: ColorsTheme.text1.withOpacity(0.8),
                                          height: 1.5,
                                          fontSize: 14,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      height: 40,
                                      child: ClipRRect(
                                        child: Image.asset('assets/images/flutter.png',
                                            fit: BoxFit.fitHeight),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Learning by doing with flutter and dart programming language',
                                        style: TextStyle(
                                          color: ColorsTheme.text1.withOpacity(0.8),
                                          height: 1.5,
                                          fontSize: 14,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.justify,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ])));
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }
}
