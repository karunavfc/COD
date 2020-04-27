import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:login/register_login.dart';
import 'package:login/student_login.dart';


class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
     final text = Text(
              'WELCOME!',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            );

    final text1 = Text(
              'Happy to see you!',
             style: TextStyle(
               color: Colors.black87.withOpacity(0.6),
               fontSize: 20,
               fontFamily: 'Montserrat',
                   fontWeight: FontWeight.bold,
             ),
            );     
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 75.0,
        child: Image.asset('assets/logo.png'),
      ),
    );


    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(StudentLogin.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.indigoAccent,
        splashColor: Colors.black12,
        child: Text('STUDENT  LOGIN', style: TextStyle(
          color: Colors.white,
           fontFamily: 'Montserrat',
          ),
        ),
      ),
    );

     final loginButton2 = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.indigoAccent,
        child: Text('STAFF  LOGIN', style: TextStyle(
          color: Colors.white,

           fontFamily: 'Montserrat',
          )
          ),
      ),
    );


    final forgotLabel = FlatButton(
     child:  Row(
           mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text(
               'You are not a member?  ',
                 style: TextStyle(
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.bold,
                 ),
               ),
               SizedBox(width: 5.0),
              InkWell(
                 
               
                       child: Text('Register', style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                         fontFamily: 'Montserrat',
                        ),
                      ),
                 )
             ],
           ),
      onPressed: () {
         Navigator.of(context).pushNamed(RegisterLogin.tag);
      },
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 25.0),
            text,
            SizedBox(height: 8.0),
            text1,
            SizedBox(height: 60.0),
            loginButton,
            loginButton2,
            SizedBox(height:60.0),
            forgotLabel
          ],
        ),
      ),
    );
  }
}
