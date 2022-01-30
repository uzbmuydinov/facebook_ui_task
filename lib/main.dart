import 'package:facebook_ui_task/pages/dark_mode.dart';
import 'package:facebook_ui_task/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Facebook clone",
      home: HomePage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        DarkMode.id:(context)=>DarkMode(),
      },
    );
  }
}



