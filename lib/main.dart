import 'package:flutter/material.dart';
import 'package:improving_flutter_navigation_drawer/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
