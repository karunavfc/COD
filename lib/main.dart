import 'package:flutter/material.dart';
import 'package:login/feed_screen.dart';
import 'package:login/upload_screen.dart';
import 'package:login/view_post_screen.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'student_login.dart';
import 'register_login.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    RegisterLogin.tag: (context) => RegisterLogin(),
    StudentLogin.tag: (context) => StudentLogin(),
    FeedScreen.tag: (context) => FeedScreen(),
    ViewPostScreen.tag: (context) => ViewPostScreen(),
    UploadScreen.tag: (context) => UploadScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COD',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
