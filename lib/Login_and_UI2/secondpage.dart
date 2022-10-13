import 'package:flutter/material.dart';
import 'package:splashscreenproj/Login_and_UI2/3rdpage.dart';

class Secondpage extends StatelessWidget {

  Widget _buildPageContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blue.shade800,
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[

              SizedBox(height: 52,),
              Container(width: 201, child: Icon(Icons.whatshot,size: 100.0,color: Colors.white,),),
              SizedBox(height: 52,),
              ListTile(
                  title: TextField(
                    style: TextStyle(color: Colors.white30),
                    decoration: InputDecoration(
                        hintText: "Email address:",
                        hintStyle: TextStyle(color: Colors.white60),
                        border: InputBorder.none,
                    ),
                  )
              ),
              Divider(color: Colors.yellowAccent,),
              ListTile(
                  title: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white60),
                    decoration: InputDecoration(
                        hintText: "Password:",
                        hintStyle: TextStyle(color: Colors.white30),
                        border: InputBorder.none,

                        icon: Icon(Icons.lock, color: Colors.white60,)
                    ),
                  )
              ),
              Divider(color: Colors.yellow,),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Expanded(
                    child:TextButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => Thirdpage(),
                        ));
                      },

                      child: Text('Login', style: TextStyle(color: Colors.white, fontSize: 17.0),),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Text('click the button to go to the next pagee!!', style: TextStyle(color: Colors.blueGrey.shade300),)
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageContent(context),
    );
  }
}

