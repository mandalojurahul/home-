import 'package:flutter/material.dart';
import 'home_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Widget Example'),
        ),
        body: HomeWidget(),
      ),
    );
  }
}
