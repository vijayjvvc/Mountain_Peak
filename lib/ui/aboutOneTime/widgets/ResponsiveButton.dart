import 'package:flutter/material.dart';
import 'package:mountain_peak/utlis/colors.dart';

class ResponsiveBtn extends StatelessWidget {
  bool? isResponsive;
  double? width;
  int index;

  ResponsiveBtn({
    Key? key,
    this.width,
    this.index = -1,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: index == 2 ? 140 : width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: AppColors.mainColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          index == 2
              ?Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Skip',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                      Image.asset("assets/img/button-one.png")
                    ],
                  ),
                )
              : Image.asset("assets/img/button-one.png"),
        ],
      ),
    );
  }
}
