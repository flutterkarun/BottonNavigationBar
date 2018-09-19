import 'package:flutter/material.dart';
import 'package:myapp/Pages/Page1.dart';
import 'package:myapp/Pages/Page2.dart';
import 'package:myapp/Pages/Page3.dart';
import 'package:myapp/Pages/Page4.dart';
import 'package:myapp/Pages/Page5.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.pink,
            backgroundColor: Colors.indigo,
            brightness: Brightness.light),
        home: new HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return PageOne();
      case 1:
        return PageTwo();
      case 2:
        return PageThree();
      case 3:
        return PageFour();
      case 4:
        return PageFive();

        break;
      default:
        return PageOne();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("BottomNavigationBar"),
      ),
      body: callPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {
            
            
          });
          
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            
              icon: Icon(Icons.add_to_home_screen),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              title: Text('Circle')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_location),
              title: Text('Location')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_comment),
              title: Text('Comment')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_alert),
              title: Text('Alert')),
        ],
      ),
    );
  }
}
