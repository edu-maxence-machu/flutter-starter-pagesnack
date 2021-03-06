import 'package:flutter/material.dart';
import 'package:navigation/pages/page_alert.dart';
import 'package:navigation/pages/page_bottom.dart';
import './pages/page_alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageBottom(title: 'Page alerte'),
    );
  }
}
