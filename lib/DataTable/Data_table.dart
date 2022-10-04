import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DataTableDemo(),
    debugShowCheckedModeBanner: false,
  ));
}

class DataTableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Table ",
          style: TextStyle(fontSize: 40, color: Colors.grey),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Container(
            width: 500,
            color: Colors.blueGrey,
            child: const Text(
              "Student Data",
              style: TextStyle(
                  fontSize: 35,
                  backgroundColor: Colors.white,
                  color: Colors.black),
            ),
          ),
          DataTable(
            dividerThickness: 10,
            dataRowColor:
            MaterialStateColor.resolveWith((states) => Colors.blueGrey),
            headingRowColor:
            MaterialStateColor.resolveWith((states) => Colors.redAccent),
            headingRowHeight: 50,
            dataTextStyle: const TextStyle(fontSize: 20, color: Colors.red),
            headingTextStyle: const TextStyle(fontSize: 20, color: Colors.blue),
            border: TableBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            columns: const <DataColumn>[
              DataColumn(label: Text("Roll No:")),
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Age")),
              DataColumn(label: Text("Course")),
            ],
            rows: const <DataRow>[
              DataRow(cells: <DataCell>[
                DataCell(Text("1")),
                DataCell(Text("Harshan")),
                DataCell(Text("20")),
                DataCell(Text("Flutter")),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text("2")),
                DataCell(Text("dinesh")),
                DataCell(Text("25")),
                DataCell(Text("php")),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text("3")),
                DataCell(Text("musa")),
                DataCell(Text("23")),
                DataCell(Text("kotlin")),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text("4")),
                DataCell(Text("aji")),
                DataCell(Text("24")),
                DataCell(Text("Sql")),
              ]),
              DataRow(cells: <DataCell>[
                DataCell(Text("5")),
                DataCell(Text("Megha'lodon")),
                DataCell(Text("21")),
                DataCell(Text("python")),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}