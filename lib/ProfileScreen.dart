import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'mainpage.dart';



class ProfileScreen extends StatelessWidget {
  final UserDetails detailsUser;

  ProfileScreen({Key key, @required this.detailsUser}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
  final GoogleSignIn _gSignIn =  GoogleSignIn();

    return  Scaffold(
        appBar  AppBar(
          backgroundColor: Color(0xff010080),
          title:  Center(
            child: Text("PROFILE"),
          ),
          automaticallyImplyLeading: false,
          actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.signOutAlt,
              size: 20.0,
              color: Colors.white,
            ),
            onPressed: (){
               _gSignIn.signOut();
              print('Signed out');
               Navigator.pop(context);
            },
          ),
        ],
        ),
        backgroundColor: Color(0xffFCFFF9),
        body:SingleChildScrollView(child:Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height:20.0),
              CircleAvatar(
                backgroundImage:NetworkImage(detailsUser.photoUrl),
                radius: 50.0,
              ),
              SizedBox(height:20.0),
               Text(
                "Name : " + detailsUser.userName,
                style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20.0),
              ),
              SizedBox(height:20.0),
               Text(
                "Email : " + detailsUser.userEmail,
                style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20.0),
              ),
              SizedBox(height:20.0),
              RaisedButton(
              shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(45.0),
              side: BorderSide(color: Colors.red)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => mainpage()),
                );
              },
              color: Color(0xff010080),
              textColor: Colors.white,
              child: Text("Main Page".toUpperCase(),
              style: TextStyle(fontSize: 18)),
              ),
              SizedBox(
                height:240,
              ),
              Text("INSTRUCTIONS",style: TextStyle(fontWeight:FontWeight.bold),),
              SizedBox(
                height:5.0
              ),
              Divider(),
              SizedBox(height: 10.0,),
              Text("1) Country data gets updated after every 2 to 3 hours",style: TextStyle(fontWeight:FontWeight.bold),),
              SizedBox(height: 10.0,),
              Text("2) Indian data gets updated after every 7 to 8 hrs",style: TextStyle(fontWeight:FontWeight.bold),),
            ],
          ),)
        )
        );
  }
}
