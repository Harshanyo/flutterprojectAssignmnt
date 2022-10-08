import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabBarDemo(),
  ));
}

class TabBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home_filled),
                text: "house",
              ),
              Tab(
                icon: Icon(Icons.access_alarm),
                text: "clock",
              ),
              Tab(
                icon: Icon(Icons.account_balance),
                text: "Bank",
              ),
            ],
          ),
        ),
        body: TabBarView(children: [],


        ),
      ),
    );

  }
}