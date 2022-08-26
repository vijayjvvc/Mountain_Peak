import 'package:flutter/material.dart';
import 'package:mountain_peak/utlis/colors.dart';

import 'aboutOneTime/WelcomePage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
    );
  }

  @override
  void initState() {
    navigationFunction();
  }

  navigationFunction() async {
    await Future.delayed(Duration(milliseconds: 3000),(){});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()),
    );

  }
}

