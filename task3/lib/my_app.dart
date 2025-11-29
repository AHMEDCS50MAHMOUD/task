import 'package:flutter/material.dart';
import 'package:task3/screens/first_screen.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Analog Clock Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}