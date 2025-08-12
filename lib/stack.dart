import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Demo")),
      body: Stack(
        children: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
          ),
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
          ),
          Stack(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(height: 20, width: 20, color: Colors.yellow),
                ),
              ),
            ],
          ),

          // Container(height: 200, width: 200, color: Colors.blue),
          // Container(height: 170, width: 170, color: Colors.yellow),
          // Container(height: 150, width: 150, color: Colors.green),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Text("Stack Demo", style: TextStyle(fontSize: 40)),
          // ),
        ],
      ),
    );
  }
}
