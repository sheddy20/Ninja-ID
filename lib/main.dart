import 'package:NinjaID/Widgets/divider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NinjaID",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pink,
        brightness: Brightness.dark,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _level = 0;

  void _increaseLevel() {
    setState(() {
      _level++;
    });
  }

  void _decreaseLevel() {
    setState(() {
      _level--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Ninja-ID"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("Asset/mayuko.jpg"),
                radius: 60.0,
              ),
            ),
            Divider(
              color: Colors.white,
              height: 90.0,
            ),
            SizedBox(height: 10.0),
            Text(
              "FIRST NAME",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Mayuko",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "LAST NAME",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Inoue",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "NINJA LEVEL",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "$_level",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10.0),
            FlatButton(
              padding: EdgeInsets.only(right: 20.0),
              onPressed: _decreaseLevel,
              child: Text(
                "Drop Level",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseLevel,
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
      ),
    );
  }
}
