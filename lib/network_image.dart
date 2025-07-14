import 'dart:developer';

import 'package:flutter/material.dart';

class NetworkImageDemo extends StatelessWidget {
  const NetworkImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(context).size.width.toString());
    log(MediaQuery.of(context).size.height.toString());
    return Scaffold(
      appBar: AppBar(title: Text("Network Image")),
      body: Image.network(
        'https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg',
        height: 100,
        fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
