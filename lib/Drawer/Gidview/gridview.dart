import 'package:flutter/material.dart';

void main() {
  runApp(GridViewww());
}

class GridViewww extends StatelessWidget {

// This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[900],
          title: const Center(
            child: Text(
              'Flutter GridView Assignment',
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          shrinkWrap: true,
          children: List.generate(1, (index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/39506df9-1f03-4885-8997-2d127ffc7e0f/ddnb3l-24231a8c-133c-40ea-a094-3de8e84bd30d.jpg/v1/fill/w_982,h_723,q_75,strp/zelda_and_link_kiss_by_theheroine.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwic3ViIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl0sIm9iaiI6W1t7InBhdGgiOiIvZi8zOTUwNmRmOS0xZjAzLTQ4ODUtODk5Ny0yZDEyN2ZmYzdlMGYvZGRuYjNsLTI0MjMxYThjLTEzM2MtNDBlYS1hMDk0LTNkZThlODRiZDMwZC5qcGciLCJ3aWR0aCI6Ijw9OTgyIiwiaGVpZ2h0IjoiPD03MjMifV1dfQ.8rBzpVe0KAKsdf5J_9Vni-8JfJUu2_ydUMzW60Pp2hU'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                ),
              ),
            );
          },),
        ),
      ),
    );
  }
}