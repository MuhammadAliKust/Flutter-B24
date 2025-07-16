import 'package:flutter/material.dart';
import 'package:flutter_b24/asset_image.dart';

import 'list_view.dart';
import 'login.dart';
import 'network_image.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewDemo(),
    );
  }

}
