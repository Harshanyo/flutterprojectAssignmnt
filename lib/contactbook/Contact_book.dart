import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PhoneBookDemo(),
  ));
}

class PhoneBookDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PhoneBookDemo_State();
}

class PhoneBookDemo_State extends State<PhoneBookDemo> {
  List<String> namesList = [
    "dinesh",
    "musafar",
    "sreeraj",
    "aji",
    "rapunzel",
    "meghaladon"
  ];
  List<String> imageList = [
    "assets/images/conect.png",
    "assets/images/conect.png",
    "assets/images/conect.png",
    "assets/images/conect.png",
    "assets/images/conect.png",
    "assets/images/conect.png",
  ];
  List<int> phoneNumbersList = [
    9215945955,
    6566454445,
    3214589878,
    9589985163,
    5648746544,
    7878484844,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
            "My Contacts",
            style: TextStyle(color: Colors.black)
        ),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext, index) {
            return Card(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.blueAccent,
              child: ListTile(
                onTap: () {
                  Fluttertoast.showToast(
                      msg: " call or message ${namesList[index]}",
                      toastLength: Toast.LENGTH_LONG);
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Image.asset(imageList[index]),
                ),
                title: Text(namesList[index]),
                trailing: Wrap(
                  spacing: 10,
                  children: [
                    Text(phoneNumbersList[index].toString()),
                    const Icon(Icons.phone),
                    const Icon(Icons.message)
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext, index) {
            return const Divider(
              thickness: 5,
              color: Colors.white,
            );
          },
          itemCount: imageList.length),
    );
  }
}