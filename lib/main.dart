import 'package:flutter/material.dart';
import 'package:gpay/views/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GPay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyHomePage().id,
      routes: {
        MyHomePage().id: (context) => MyHomePage(),
      },
    );
  }
}
