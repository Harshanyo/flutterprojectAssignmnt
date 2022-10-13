import 'package:flutter/material.dart';
import 'package:splashscreenproj/Login_and_UI2/firstpage.dart';


class Thirdpage extends StatefulWidget {
  static String tag = 'LOGIN_PAGE';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 50.0,
        child: Icon(Icons.volunteer_activism,color: Colors.blueAccent,size: 50.0,),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(31.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'PASSWORD',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(31.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child:ElevatedButton(
        child: Text("Close Bottom Sheet"),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.greenAccent,

        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Firstpage()));
        },

      ),
    );

    final backtext = FloatingActionButton(
    child: Text(
    ' click the button to go to the next pagee!!',
    style: TextStyle(color: Colors.black12),
    ),
    onPressed: () {},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25.0, right: 25.0),
          children: <Widget>[
            // Text(' login),
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 9.0),
            password,
            SizedBox(height: 25.0),
            loginButton,
            backtext
          ],
        ),
      ),
    );
  }
}