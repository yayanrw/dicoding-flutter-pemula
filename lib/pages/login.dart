import 'package:flutter/material.dart';
import 'package:litelearn/helper/colors_theme.dart';
import 'package:litelearn/pages/register.dart';
import 'package:litelearn/widget/bezier_container.dart';
import 'package:litelearn/pages/main_page.dart';


class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController tfUsername = new TextEditingController();
  TextEditingController tfPassword = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
                top: -MediaQuery.of(context).size.height * .30,
                right: -MediaQuery.of(context).size.width * .4,
                child: BezierContainer()),
            Padding(
              padding: const EdgeInsets.all(36),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    'Welcome to',
                    style: TextStyle(
                        fontSize: 36, color: Colors.black, fontFamily: 'Times'),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'LiteLearn',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Times'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  _usernamePasswordWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  _loginButton(),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text("Register User?",
                          style: TextStyle(color: ColorsTheme.primary1)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _usernamePasswordWidget() {
    return Form(
      child: Column(
        children: <Widget>[
          _entryUsername(),
          _entryPassword(),
        ],
      ),
    );
  }

  Widget _entryUsername() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Username',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              controller: tfUsername,
              decoration: InputDecoration(
                  hintText: 'Username',
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _entryPassword() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Password',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: tfPassword,
            obscureText: true,
            decoration: InputDecoration(
                hintText: 'Password',
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true),
          )
        ],
      ),
    );
  }

  Widget _loginButton() {
    return MaterialButton(
      onPressed: () {
        if (tfUsername.text.isEmpty || tfPassword.text.isEmpty) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Please fill username and password')));
        } else {

          Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => MainPage(username: tfUsername.text)));
        }
      },
      color: ColorsTheme.primary1,
      height: 46,
      minWidth: MediaQuery.of(context).size.width,
      elevation: 0,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text("Login"),
    );
  }
}
