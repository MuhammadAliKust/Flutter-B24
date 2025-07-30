import 'package:flutter/material.dart';
import 'package:flutter_b24/dynamic_list_view.dart';
import 'package:flutter_b24/grid_view.dart';
import 'package:flutter_b24/login.dart';

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [LoginView(), GridViewDemo(), DynamicListView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapIndex) {
          selectedIndex = tapIndex;
          setState(() {});
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
