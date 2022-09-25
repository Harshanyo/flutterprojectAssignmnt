import 'dart:async';
import 'package:flutter/material.dart';


void main() {
  runApp(
      MaterialApp(
          theme: ThemeData(primarySwatch: Colors.purple),
          debugShowCheckedModeBanner: false,
          home: MySplash()));
}
class MySplash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MySplashState();
}
class MySplashState extends State<MySplash> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://landerapp.com/blog/wp-content/uploads/2018/06/1_FFP1bisztXseQFbZ-WQedw-1.png")),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [


            ],
          ),
        ),
      ),
    );
  }
}