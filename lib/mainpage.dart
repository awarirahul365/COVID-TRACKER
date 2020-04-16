import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'HomePage.dart';
import 'paymentscreen.dart';
import 'precautionscreen.dart';
import 'contactscreen.dart';

class mainpage extends StatefulWidget {
  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int _currentIndex=0;
  final List<Widget>_children=[
    HomePage(),
    paymentscreen(),
    precautionscreen(),
    contactscreen(),
  ];
  void onTapbar(int index)
  {
    setState(() {
      _currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:_children[_currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex:_currentIndex,
        items: 
        [
          BottomNavigationBarItem
          (
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor:  Color(0xff010080),
          ),
          BottomNavigationBarItem
          (
            icon: Icon(FontAwesomeIcons.database),
            title: Text("Graphs"),
            backgroundColor:  Color(0xff010080),
          ),
          BottomNavigationBarItem
          (
            icon: Icon(Icons.info),
            title: Text("Precautions"),
            backgroundColor:  Color(0xff010080),
          ),
          BottomNavigationBarItem
          (
            icon: Icon(Icons.contacts),
            title: Text("Contacts"),
            backgroundColor: Color(0xff010080),
          ),
        ],
        onTap:onTapbar,
      ),
    ); 
  }
}