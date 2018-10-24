import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_navigation_drawyer/new_page.dart';
import 'package:flutter_app_navigation_drawyer/new_page_two.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {  // eta main file
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primarySwatch: Colors.deepOrange,
          primaryColor:
              defaultTargetPlatform == TargetPlatform.iOS ? Colors.amber : null),
      home: new HomePage(),
      // routes: <String,WidgetBuilder>{
      // "/a" : (BuildContext context) => new NewPage("Android"),
      // },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Collection"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "Shoili06",
                style: TextStyle(color: Colors.yellow, fontSize: 20.0),
              ),
              accountEmail: new Text(
                "sc2000@gmail.com",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.amber,
                child: new Text(
                  "S",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.yellowAccent,
                  child: new Text(
                    "C",
                    style: TextStyle(fontSize: 22.0, color: Colors.deepPurple,),
                  ),
                )
              ],
            ),
            new ListTile(
              title: new Text(
                "Shinchan",
                style: TextStyle(color: Colors.brown,fontSize: 20.0),
              ),
              trailing: new Icon(Icons.android),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPage()));
              },
            ), //1
            new ListTile(
              title: new Text(
                "Pokemon",
                style: new TextStyle(color: Colors.lightGreen,fontSize: 20.0),
              ),
              trailing: new Icon(Icons.devices),
              onTap: () {
                Navigator.of(context).pop();
                //  Navigator.of(context).pushNamed("/a");
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPageOne()));
              },
            ),//2
            new Divider(),
            new ListTile(
              title: new Text(
                "tarak Mehta", //changed?yup
                style: new TextStyle(color: Colors.redAccent,fontSize: 20.0),
              ),
              trailing: new Icon(Icons.close),
            ),
            new ListTile(  // ebar drag and drop hbe na
              // new project creat kore otake clone korte hbe then copy paste . mtui kor ami achhi
              title: new Text(
                "Exit",
                style: new TextStyle(color: Colors.redAccent,fontSize: 20.0),
              ),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),//3 ok ? ebhmar jdi arekta add korte hoy ? then
          ],
        ), //clone kor ota
      ),
      body: new Container(
        color: Colors.white70,
        child: new Center(
          child: new Text("Welcome to my world \n Bienvenido :)",
            style:
            new TextStyle(color: Colors.pink,
                fontSize: 35.0
            ),),
        ),
      ),
    );
  }
}
