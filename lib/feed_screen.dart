import 'package:flutter/material.dart';
import 'package:login/post_model.dart';
import 'package:login/upload_screen.dart';
import 'package:login/view_post_screen.dart';

class FeedScreen extends StatefulWidget {
  static String tag = 'feed-screen';
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  Widget _buildPost(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      child: Container(
        width: double.infinity,
        height: 400.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 2),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        child: ClipOval(
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            image: AssetImage(posts[index].authorImageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      posts[index].authorName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(posts[index].timeAgo),
                    trailing: IconButton(
                      icon: Icon(Icons.more_horiz),
                      color: Colors.black,
                      onPressed: () => print('More'),
                    ),
                  ),
                  InkWell(
                    onDoubleTap: () => print('Like post'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ViewPostScreen(
                            post: posts[index],
                          ),
                        ),
                      );
                    },


                    
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      width: double.infinity,
                      height: 177.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            offset: Offset(0, 5),
                            blurRadius: 8.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(posts[index].imageUrl),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),

                  new Container(
                    padding:EdgeInsets.only(top: 0.0, left: 0.0, right: 60.0),
                    child: Column(
                      children:<Widget>[
                        Text('Artificial  Inteligence',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text('      Artificial intelligence (AI) is the..'),
                    Text('Read more                     ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    )
                      ],
                  ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 30.0,
                                  onPressed: () => print('Like post'),
                                ),
                                Text(
                                  '2,515',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 20.0),
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.chat),
                                  iconSize: 30.0,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => ViewPostScreen(
                                          post: posts[index],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Text(
                                  '350',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.share),
                          iconSize: 30.0,
                          onPressed: () => print('Share post'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
       appBar: new AppBar(title: new Text('       Concept  Feed'), 
       backgroundColor: Colors.indigoAccent,),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountEmail: new Text("karunakaran3d@gmail.com"),
              accountName: new Text("karunakaran",
              style: TextStyle(
                fontSize: 17,
              ),
              ),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  child: Image.asset('assets/images/kk1.png',
                  ),
                ),
                onTap: () => print("This is your current account."),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  child: new CircleAvatar(
                    child: Image.asset('assets/images/kk.png'),
                  ),
                  onTap:(){},
                ),
              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage('assets/images/wall.png'),
                  fit: BoxFit.fill
                )
              ),
            ),
            new ListTile(
              title: new Text("Add Concept",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              ),
              leading: new Icon(Icons.add,
              color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(UploadScreen.tag);
              }
            ),
            new ListTile(
              title: new Text("Account",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              ),
              leading: new Icon(Icons.account_circle,
              color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(FeedScreen.tag);
              }
            ),

            new ListTile(
              title: new Text("Notification",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              ),
              leading: new Icon(Icons.notifications,
              color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(FeedScreen.tag);
              }
            ),

            new ListTile(
              title: new Text("Sent",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              ),
              leading: new Icon(Icons.send,
              color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(FeedScreen.tag);
              }
            ),

            new ListTile(
              title: new Text("Trash",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              ),
              leading: new Icon(Icons.restore_from_trash,
              color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(FeedScreen.tag);
              }
            ),

            new ListTile(
              title: new Text("Settings",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              ),
              leading: new Icon(Icons.settings,
              color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(FeedScreen.tag);
              }
            ),

            new ListTile(
              title: new Text("LogOut",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              ),
              leading: new Icon(Icons.exit_to_app,
              color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed(FeedScreen.tag);
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Cancel",
              style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      
    body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 16.0),
                    Container(
                      width: 35.0,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: stories.length +1,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return SizedBox(width: 10.0);
                }
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0, 5),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        height: 60.0,
                        width: 60.0,
                        image: AssetImage(stories[index - 1]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          _buildPost(0),
          _buildPost(1),
          _buildPost(2),
          _buildPost(0),
          _buildPost(0),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
                size: 30.0,
                color: Colors.black,
              ),
              title: Text(''),
              backgroundColor: Colors.indigoAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.white,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Color(0xFF23B66F),
                  onPressed: () {
                     Navigator.of(context).pushNamed(UploadScreen.tag);
                  }, 
                  child: Icon(
                    Icons.add,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 30.0,
                color: Colors.white,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 30.0,
                color: Colors.white,
              ),
              title: Text(''),
            ),
          ],
        ),
      ),
    );
  }
}




