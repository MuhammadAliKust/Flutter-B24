import 'package:flutter/material.dart';
import 'package:flutter_b24/models/notification.dart';

class DynamicListView extends StatelessWidget {
  DynamicListView({super.key});

  List<NotificationModel> notificationList = [
    NotificationModel(
      title: 'First Title',
      subTitle: 'First Description',
      time: '11:15 AM',
    ),
    NotificationModel(
      title: 'Second Title',
      subTitle: 'Second Description',
      time: '1:15 AM',
    ),
    NotificationModel(
      title: 'Third Title',
      subTitle: 'Third Description',
      time: '12:15 AM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dynamic List View")),
      body: ListView.builder(
        itemCount: notificationList.length,
        // scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Card(
              elevation: 10,
              // color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text(notificationList[i].title),
                subtitle: Text(notificationList[i].subTitle),
                trailing: Text(notificationList[i].time),
                // tileColor: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }
}
