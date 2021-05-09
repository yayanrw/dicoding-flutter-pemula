import 'dart:ffi';

class ClsOnGoingCourse {
  String course;
  double percent;

  ClsOnGoingCourse({this.course, this.percent});
}

var listOnGoingCourse = [
  ClsOnGoingCourse(course: 'Kubernetes Essentials', percent: 0.5),
  ClsOnGoingCourse(course: 'Advance Phyton Data Analyst', percent: 0.2),
  ClsOnGoingCourse(course: 'Android Fundamentals', percent: 0.8),
  ClsOnGoingCourse(course: 'Flutter Beginner', percent: 0.9),
  ClsOnGoingCourse(course: 'Android Expert', percent: 0.1),
  ClsOnGoingCourse(course: 'AWS Cloud Practitioner', percent: 0.7),
];
