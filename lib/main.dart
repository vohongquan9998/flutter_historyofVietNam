import 'package:flutter/material.dart';
import 'package:flutter_historyofvietnam/src/homepage.dart';
import 'package:flutter_showcase/flutter_showcase.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: Frame.builder,
      home: HomePage(),
    );
  }
}
