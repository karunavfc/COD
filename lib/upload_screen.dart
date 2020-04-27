import 'package:flutter/material.dart';
class UploadScreen extends StatelessWidget{
   static String tag = 'upload-screen';
  @override
  Widget build(BuildContext context) {


final upload = Padding(
      padding: EdgeInsets.only(top:20),
      child: Container(
        width: double.infinity,
        height: 350.0,
        decoration: BoxDecoration(
          border:  Border.all(
                              color: Colors.black45,
                              style: BorderStyle.solid,
                              width: 1.5),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(-7, 9),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(top: 1.0, left: 20.0, right: 20.0),
                  child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: '                         TITLE',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent))),
                  ),
                  SizedBox(height: 1.0),
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical:70,),
                        labelText: '                    DESCRIPTION',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent))),
                  ),
                   new ListTile(
                     contentPadding:EdgeInsets.only(left:65),
              title: new Text("ADD IMAGE",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
              ),
             leading : new Icon(
               Icons.add_photo_alternate,
              color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(UploadScreen.tag);
              }
            ),
                ],
              ),
            ),
          );
 final loginButton = Padding(
      padding: EdgeInsets.only(left:50),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(UploadScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.indigoAccent,
        splashColor: Colors.black12,
        child: Text('UPLOAD', style: TextStyle(
          color: Colors.white,
           fontFamily: 'Montserrat',
          ),
        ),
      ),
    );

     final loginButton2 = Padding(
      padding: EdgeInsets.only(left:30.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(UploadScreen.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.indigoAccent,
        child: Text('CANCEL', style: TextStyle(
          color: Colors.white,

           fontFamily: 'Montserrat',
          )
          ),
      ),
    );
          

final bod = Container(
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
          upload,
          Row(
            children: <Widget>[
              loginButton,
              SizedBox(height: 120),
              loginButton2
            ],
          ),
          ],
      ),
    );    

    return Scaffold(
      appBar: new AppBar(title: new Text('      Upload  Concept',
      ), 
       backgroundColor: Colors.indigoAccent,),
      body:bod,
    );
  }
}
