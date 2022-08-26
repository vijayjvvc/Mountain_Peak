import 'package:flutter/material.dart';
import 'package:mountain_peak/ui/aboutOneTime/widgets/AppText.dart';
import 'package:mountain_peak/ui/aboutOneTime/widgets/LargeText.dart';
import 'package:mountain_peak/ui/aboutOneTime/widgets/ResponsiveButton.dart';
import 'package:mountain_peak/ui/splash.dart';
import 'package:mountain_peak/utlis/colors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

List<String> listOfImage = [
  "welcome-one.png",
  "welcome-two.png",
  "welcome-three.png"
];
List listOfTitle = ["Mountain", "Discover", "Search"];
List listOfDes = [
  "Mountain hikes give you an incredible sense of freedom along with endurance tests",
  "welcome-two.png",
  "Mountain hikes give you an incredible sense of freedom along with endurance tests"
];

int index = 1;

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    PageController _pageController =
        PageController(viewportFraction: 1, keepPage: true);
    return Scaffold(
      body: PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          itemCount: listOfImage.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/" + listOfImage[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LargeText(textSize: 40, text: "Trip"),
                        AppText(
                            textSize: 30,
                            text: listOfTitle[index],
                            color: Colors.black54),
                        const SizedBox(height: 20.0),
                        Container(
                          width: 250,
                          child: AppText(
                              textSize: 16,
                              text: listOfDes[index],
                              color: AppColors.textColor2),
                        ),
                        const SizedBox(height: 20.0),
                        InkWell(
                          onTap: () {
                            controlFunction(index, _pageController, context);
                          },
                          child: ResponsiveBtn(width: 120, index: index),
                        )
                      ],
                    ),
                    Column(
                      children:
                          List.generate(listOfImage.length, (indexOfRecycler) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexOfRecycler ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexOfRecycler
                                  ? AppColors.mainColor
                                  : AppColors.mainColor.withOpacity(0.4)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

void controlFunction(
    int index, PageController pageController, BuildContext context) {
  index == 2
      ? Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Splash()),
        )
      : pageController.animateToPage(index + 1,
          curve: Curves.bounceOut, duration: Duration(milliseconds: 1500));
}
