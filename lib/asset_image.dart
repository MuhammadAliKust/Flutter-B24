import 'dart:developer';

import 'package:flutter/material.dart';

class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    log(MediaQuery.of(context).size.height.toString());
    return Scaffold(
      appBar: AppBar(title: Text("Asset Image")),
      body: Image.asset(
        'assets/images/1.jpeg',
        height: 200,
        fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
