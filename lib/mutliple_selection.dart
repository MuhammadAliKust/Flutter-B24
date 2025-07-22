import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Selection")),
      body: ListView.builder(
        itemCount: 10,
        // scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Card(
              elevation: 10,

              color: selectedIndex.contains(i) ? Colors.blue : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ListTile(
                onTap: () {
                  if (selectedIndex.contains(i)) {
                    selectedIndex.remove(i);
                  } else {
                    selectedIndex.add(i);
                  }
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
