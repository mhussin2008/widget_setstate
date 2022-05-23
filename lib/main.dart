import 'package:flutter/material.dart';
import 'test_reorderable.dart';
import 'testing_page.dart';
import 'test_spincircle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Communication',

      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: const TestingPage(),
      // home:  TestReorderable(),
      home: TestSpinCircle(),
    );
  }
}