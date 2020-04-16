import 'package:flutter/material.dart';
import 'ChartsDemo.dart';

class paymentscreen extends StatefulWidget {
  @override
  _paymentscreenState createState() => _paymentscreenState();
}

class _paymentscreenState extends State<paymentscreen> {

  @override
  

  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ChartsDemo(),
      ),
    );
  }
}
