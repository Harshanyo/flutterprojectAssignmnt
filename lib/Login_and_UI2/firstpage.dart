import 'package:flutter/material.dart';

import 'secondpage.dart';

void main() {
  runApp(MaterialApp(
    home: Firstpage(),
    debugShowCheckedModeBanner: false,
  ));
}


class Firstpage extends StatelessWidget {
  final String background = 'images/aw.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(background), fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.black87.withOpacity(0.7),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      height: 101.0,
                    ),
                    Text(
                      "one diraction's consert",
                      style: TextStyle(
                        color: Colors.white10,
                        fontSize: 29.0,
                      ),
                    ),
                    Text(
                      "Story of my life",
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 100.0,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(color: Colors.white30),
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white70),
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(31.0)),
                      ),
                    ),
                    SizedBox(
                      height: 41.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text("Close the Bottom Sheet"),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.lightGreen,

                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Secondpage(),
                              ));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "sign in to go to the next pagee!!",
                          style: TextStyle(color: Colors.white60, fontSize: 16.0),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}