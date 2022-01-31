import 'package:flutter/material.dart';

import 'screens/future_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String _title = 'Async Await';
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: FutureScreen(title: _title,),
    );
  }
}
