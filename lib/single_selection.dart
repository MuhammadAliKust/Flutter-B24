import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Single Selection")),
      body: ListView.builder(
        itemCount: 10,
        // scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Card(
              elevation: 10,
              color: selectedIndex == i ? Colors.blue : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ListTile(
                onTap: () {
                  selectedIndex = i;
                  setState(() {});
                },
                leading: Icon(Icons.notifications),
                title: Text(
                  "Selected Index: $selectedIndex",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "Loop Index: $i",
                  style: TextStyle(fontSize: 20),
                ),
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
