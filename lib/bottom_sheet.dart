import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet Demo")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Container(
                        height: 8,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}
