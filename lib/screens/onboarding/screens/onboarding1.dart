import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

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
              image: AssetImage('assets/images/onboarding1.png'),
            ),
            Gap(20),
            Text(
              'Explore the wonders of our App',
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
