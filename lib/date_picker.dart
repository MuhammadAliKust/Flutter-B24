import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date Picker Demo")),
      body: Column(
        children: [
          Text(
            DateFormat.yMMMMEEEEd().format(dateTime),
            style: TextStyle(fontSize: 40),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                ).then((val) {
                  dateTime = val!;
                  setState(() {});
                });
              },
              child: Text("Show Date Picker"),
            ),
          ),
        ],
      ),
    );
  }
}
