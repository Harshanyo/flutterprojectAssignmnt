import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNaviagtionBarDemo(),
  ));
}

class BottomNaviagtionBarDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _BottomNaviagtionBarState();
}

class _BottomNaviagtionBarState extends State{

  int _selectedIndex = 0;

  List _pages = [
    Icon(Icons.call,size: 160,),
    Icon(Icons.camera,size: 160,),
    Icon(Icons.message,size: 160,),
    Icon(Icons.add,size: 160,),
    Icon(Icons.whatsapp,size: 160,),
  ];

  void _onItemtapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BOTTOM NAV BAR"),),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.call),backgroundColor: Colors.purple,label: "CALL"),
          BottomNavigationBarItem(icon: Icon(Icons.camera),label: "CAMERA"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "MESSAGE"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "ADD"),
          BottomNavigationBarItem(icon: Icon(Icons.facebook),label: " FACEBOOK"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemtapped,
        backgroundColor: Colors.tealAccent,
      ),
    );

  }
}