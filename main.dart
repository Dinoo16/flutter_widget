import 'package:flutter/material.dart';
import 'package:flutter_widget_tut/pages/components/buttonCustom.dart';
import 'package:flutter_widget_tut/pages/gridtile_1.dart';
import 'package:flutter_widget_tut/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}
