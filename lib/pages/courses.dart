import 'package:flutter/material.dart';
import 'package:litelearn/helper/colors_theme.dart';
import 'package:litelearn/model/cls_courses.dart';
import 'package:litelearn/model/cls_ongoing_course.dart';
import 'package:litelearn/pages/course_detail.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Courses extends StatefulWidget {
  final username;

  Courses({@required this.username});

  @override
  _CoursesState createState() => _CoursesState(username: username);
}

class _CoursesState extends State<Courses> {
  final username;

  _CoursesState({@required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F8FA),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 52, bottom: 24, left: 22, right: 22),
            child: Column(
              children: <Widget>[
                _profile(),
                SizedBox(
                  height: 24,
                ),
                _search(),
                SizedBox(
                  height: 24,
                ),
                _onGoingCourses(),
                SizedBox(
                  height: 24,
                ),
                _popularCourses()
              ],
            ),
          ),
        ],
      )),
    );
  }

  Widget _profile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Hello, ',
                  style: TextStyle(
                      color: Colors.black, fontSize: 30, fontFamily: 'Times'),
                ),
                Text(
                  this.username,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times'),
                )
              ],
            )
          ],
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: ColorsTheme.bag1,
              shape: BoxShape.circle,
              border: Border.all(width: 3.0, color: Colors.orange)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset('assets/images/cat.jfif', fit: BoxFit.cover),
          ),
        )
      ],
    );
  }

  Widget _search() {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Under Development!')));
      },
      child: Container(
        height: 50,
        padding: EdgeInsets.only(left: 16, right: 16),
        decoration: BoxDecoration(
            color: ColorsTheme.bag1, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.search,
              color: Colors.grey,
              size: 20,
            ),
            // VerticalDivider(width: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Search',
                style: TextStyle(fontSize: 14, height: 1.1, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _onGoingCourses() {
    final totalOngoingCourse = listOnGoingCourse.length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('Ongoing courses',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Times',
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('($totalOngoingCourse)',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 20, fontFamily: 'Times')),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final ClsOnGoingCourse clsOnGoingCourse =
                    listOnGoingCourse[index];
                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Under Development!')));
                    },
                    child: Container(
                      width: 140,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: Text(
                              clsOnGoingCourse.course,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Center(
                            child: LinearPercentIndicator(
                              width: 100,
                              animation: true,
                              lineHeight: 4.0,
                              animationDuration: 1000,
                              percent: clsOnGoingCourse.percent,
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.greenAccent,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: listOnGoingCourse.length,
            ))
      ],
    );
  }

  Widget _popularCourses() {
    final totalCourses = listCourses.length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('Popular courses',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Times',
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('($totalCourses)',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 20, fontFamily: 'Times')),
            ),
          ],
        ),
        Container(
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: listCourses.length,
            itemBuilder: (context, index) {
              final ClsCourses clsCourses = listCourses[index];
              return Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CourseDetail(course_title: clsCourses.title,)));
                  },
                  child: Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 50,
                                child: ClipRRect(
                                  child: Image.asset(clsCourses.image,
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 8,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      clsCourses.title,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      clsCourses.description,
                                      style: TextStyle(
                                        color:
                                            ColorsTheme.text1.withOpacity(0.8),
                                        height: 1.5,
                                        fontSize: 14,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: ColorsTheme.bag1,
                                    elevation: 0,
                                    textColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Text("Path: ${clsCourses.path}",
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: ColorsTheme.bag1,
                                    elevation: 0,
                                    textColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Text(
                                      "Rating: ${clsCourses.rating}",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: ColorsTheme.bag1,
                                    elevation: 0,
                                    textColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Text(
                                        "Enrolled: ${clsCourses.enrolled}",
                                        style: TextStyle(fontSize: 10)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
