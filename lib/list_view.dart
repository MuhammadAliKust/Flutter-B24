import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View")),
      body: ListView.builder(
        itemCount: 10,
        // scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Card(
              elevation: 10,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notification Title"),
                subtitle: Text("Notification Sub Title"),
                trailing: Icon(Icons.arrow_forward),
                // tileColor: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }
}
