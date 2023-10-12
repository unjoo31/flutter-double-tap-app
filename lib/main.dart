import 'package:flutter/material.dart';
import 'package:flutter_double_tap_app/double_tabbar_stack.dart';

void main() => runApp(const TabBarApp());

class TabBarApp extends StatelessWidget {
  const TabBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: DoubleTabbar(),
    );
  }
}
