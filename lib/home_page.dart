import 'package:flutter/material.dart';
import 'package:login/feed_screen.dart';
import 'package:login/register_login.dart';
class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    
  final lorem =Column(
    children: <Widget>[
     Container(
              padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent))),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'PASSWORD ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent))),
                    obscureText: true,
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                      
                        labelText: 'STAFF ID',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent))),
                  ),
                  SizedBox(height: 80.0),
                  Container(
                    width: 400,
                      height: 40.0,
                     child: RaisedButton(
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                            ),
                               onPressed: () {
                         Navigator.of(context).pushNamed(FeedScreen.tag);
                           },
                     padding: EdgeInsets.all(12),
                         color: Colors.indigoAccent,
                         splashColor: Colors.black12,
                             child: Text('SIGN UP', style: TextStyle(
                                 color: Colors.white,
                         fontFamily: 'Montserrat',
          ),
        ),
      ),),
                  SizedBox(height: 40.0),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 2.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0),
                          ),
                      child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: 
                        
                            Center(
                              child: Text('Go Back',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                      ),
                                    ),
                                 ),
                              ),
                            ),
                          ],
                         ),
                       ),
            SizedBox(height: 90.0),
           Row(
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
                 child: FlatButton(
               onPressed: () {
                Navigator.of(context).pushNamed(RegisterLogin.tag);
                 },
                 padding: EdgeInsets.all(3),
                   color: Colors.white,
                     splashColor: Colors.white,
                       child: Text('Register', style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                         fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                 )
             ],
           ),
      ],
     );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Colors.white10,
        ]),
      ),
      child: Column(
        children: <Widget>[ 
          lorem
          ],
      ),
    );
    return Scaffold(
      body: body,
    );
  }
}
