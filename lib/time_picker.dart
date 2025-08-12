import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerDemo extends StatefulWidget {
  TimePickerDemo({super.key});

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  TimeOfDay timeOfDay = TimeOfDay.now();

  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Time Picker Demo")),
      body: Column(
        children: [
          Text(
            timeOfDay.format(context).toString(),
            style: TextStyle(fontSize: 40),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then((val) {
                  timeOfDay = val!;
                  setState(() {});
                });
              },
              child: Text("Show Time Picker"),
            ),
          ),
        ],
      ),
    );
  }
}
