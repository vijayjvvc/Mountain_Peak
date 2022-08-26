import 'package:flutter/material.dart';
import 'package:mountain_peak/ui/aboutOneTime/WelcomePage.dart';
import 'package:mountain_peak/ui/splash.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage()
    );
  }
}
