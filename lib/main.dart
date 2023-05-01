import 'package:design_task/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        // primarySwatch: Colors.purple,
        primaryColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.grey),
        // brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.transparent),
          elevation: 0,
          color: Colors.grey[850],
        ),
        brightness: Brightness.dark,
        // primarySwatch: Colors.orange,
        primaryColor: Colors.white,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.light,
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
