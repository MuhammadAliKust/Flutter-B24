import 'package:flutter/material.dart';
import 'package:flutter_b24/asset_image.dart';
import 'package:flutter_b24/page_view.dart';
import 'package:flutter_b24/single_selection.dart';

import 'dynamic_list_view.dart';
import 'grid_view.dart';
import 'list_view.dart';
import 'login.dart';
import 'mutliple_selection.dart';
import 'network_image.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewDemo(),
    );
  }

}
