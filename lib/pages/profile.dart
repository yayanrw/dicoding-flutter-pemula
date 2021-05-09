import 'package:flutter/material.dart';
import 'package:litelearn/helper/colors_theme.dart';
import 'package:litelearn/pages/login.dart';

class Profile extends StatefulWidget {
  final username;

  Profile({@required this.username});

  @override
  _ProfileState createState() => _ProfileState(username: username);
}

class _ProfileState extends State<Profile> {
  final username;

  _ProfileState({@required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F8FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 24, left: 24, right: 24, top: 36),
          child: Center(
            child: Column(
              children: <Widget>[
                _shadowAppBar(),
                SizedBox(
                  height: 32,
                ),
                _displayPicture(),
                SizedBox(
                  height: 48,
                ),
                _displayName(),
                SizedBox(
                  height: 20,
                ),
                _recentCourses(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _shadowAppBar() {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: Center(
            child: Text('Profile',
                style: TextStyle(
                    color: ColorsTheme.text1,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Times')),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Under Development!')));
              },
              color: Colors.yellow,
              height: 30,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                "Edit",
                style: TextStyle(
                  fontFamily: 'Times',
                  color: ColorsTheme.text1,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _displayPicture() {
    return Container(
      width: 124,
      height: 124,
      decoration: BoxDecoration(
          color: ColorsTheme.bag1,
          shape: BoxShape.circle,
          border: Border.all(width: 5.0, color: Colors.yellow)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(62),
        child: Image.asset('assets/images/cat.jfif', fit: BoxFit.cover),
      ),
    );
  }

  Widget _displayName() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          Text(
            this.username,
            style: TextStyle(
                fontFamily: 'Times', fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            '45, 870 Points',
            style: TextStyle(
                fontFamily: 'Times', color: Colors.grey, fontSize: 20),
          )
        ],
      ),
    );
  }

  _recentCourses() {
    return Container(
      height: 410,
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
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '5 min ago',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        )
                      ],
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
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '5 min ago',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        )
                      ],
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
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Yesterday',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        )
                      ],
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
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '6 days ago',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
            },
            color: ColorsTheme.primary1,
            height: 46,
            minWidth: 140,
            elevation: 0,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
