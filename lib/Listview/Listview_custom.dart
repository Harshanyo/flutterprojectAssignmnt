import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MaterialApp(
    home: ListBuilderDemo(),
  ));
}

class ListBuilderDemo extends StatefulWidget{
  @override
  State<ListBuilderDemo> createState() => ListViewBuilderDemo_State();
}

class ListViewBuilderDemo_State extends State<ListBuilderDemo>{
  List<String> cars = ["Supra","Skyline","Mustang","GTR"];
  List<String> images = ["https://th.bing.com/th/id/OIP.VKPvA5-5m_AOwewl2YHzuwHaEm?pid=ImgDet&rs=1",
    "https://th.bing.com/th/id/OIP.-KDgOeWQEHlo--1MhhChjgHaEK?pid=ImgDet&rs=1",
    "https://static3.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/1970-Ford-Mustang-Boss-302-quarter-front.jpg",
    "https://th.bing.com/th/id/OIP.5aP1KJzbiz5kLgM3ABj-lwHaDW?pid=ImgDet&rs=1"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Custom "),),
      /*body: ListView.builder(itemBuilder: (BuildContext, index){
        return Card(
          child: ListTile(
            leading: Image.network(images[index]),
            title: Text(cars[index]),
          ),
        );
      },itemCount: images.length, ),
*/
      body: ListView.separated(itemBuilder: (BuildContext, index){
        return Card(
          child: ListTile( onTap: (){Fluttertoast.showToast(msg: "Select what u want ${cars.elementAt(index)}");},
            leading: CircleAvatar(child: Image.network(images[index]),),
            title: Text(cars[index]),
          ),
        );
      },
          separatorBuilder: (BuildContext, index){
            return Divider(thickness: 5,color: Colors.white,height: 4, );
          },
          itemCount: images.length),
    );
  }
}