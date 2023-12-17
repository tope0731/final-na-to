import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xAAC3EEFF),
      child: SafeArea(
        child: Column(
          children: [
            Gap(40),
            Center(
              child: Text(
                'iSee',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF056FD0),
                ),
              ),
            ),
            Center(
              child: Text(
                '"See the world differently"',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF056FD0),
                ),
              ),
            ),
            Image(
              image: AssetImage('assets/images/onboarding3.png'),
            ),
            Gap(20),
            Text(
              'See the world with your imagination',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF056FD0),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
