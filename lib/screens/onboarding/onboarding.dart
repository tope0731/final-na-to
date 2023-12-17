import 'package:final_ito/screens/login/loading_screen.dart';
import 'package:final_ito/screens/onboarding/screens/onboarding1.dart';
import 'package:final_ito/screens/onboarding/screens/onboarding2.dart';
import 'package:final_ito/screens/onboarding/screens/onboarding3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoardingScreen extends StatefulWidget {
  onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  PageController _controller = PageController();

  //for tracking of pageview
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SmoothPageIndicator(controller: _controller, count: 3),
                  Gap(30),
                  onLastPage
                      ? Container(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF89CFF3),
                              fixedSize: Size(175, 50),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (_) => LoadingScreen()),
                              );
                            },
                            child: Text(
                              'Home',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        )
                      : Container(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF89CFF3),
                              fixedSize: Size(175, 50),
                            ),
                            onPressed: () {
                              _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                  Gap(30)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
