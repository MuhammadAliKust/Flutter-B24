import 'package:flutter/material.dart';
import 'package:flutter_b24/login.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(
            tabs: [Icon(Icons.home), Icon(Icons.favorite), Icon(Icons.person)],
          ),
        ),
        body: TabBarView(
          children: [
            LoginView(),
            Center(child: Text("Favorite", style: TextStyle(fontSize: 40))),
            Center(child: Text("Profile", style: TextStyle(fontSize: 40))),
          ],
        ),
      ),
    );
  }
}
