import 'package:flutter/material.dart';
import 'package:flutter_b24/asset_image.dart';
import 'package:flutter_b24/date_picker.dart';
import 'package:flutter_b24/dialog_box.dart';
import 'package:flutter_b24/google_map.dart';
import 'package:flutter_b24/page_view.dart';
import 'package:flutter_b24/providers/user.dart';
import 'package:flutter_b24/screen_a.dart';
import 'package:flutter_b24/single_selection.dart';
import 'package:flutter_b24/stack.dart';
import 'package:flutter_b24/tabbar_view.dart';
import 'package:flutter_b24/time_picker.dart';
import 'package:provider/provider.dart';

import 'bottom_bar.dart';
import 'bottom_sheet.dart';
import 'dynamic_list_view.dart';
import 'grid_view.dart';
import 'list_view.dart';
import 'login.dart';
import 'mutliple_selection.dart';
import 'network_image.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GoogleMapDemo());
  }
}
