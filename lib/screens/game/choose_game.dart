import 'package:final_ito/screens/game/game1.dart';
import 'package:final_ito/screens/game/game2.dart';
import 'package:final_ito/screens/game/game3.dart';
import 'package:final_ito/screens/home_screen.dart';
import 'package:flutter/material.dart';

class games extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0C6699),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomePageScreen()));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 30,
          ),
        ),
        title: Text('Choose Game'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Screen A
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Game1(),
                  ),
                );
              },
              child: Text('Go to Screen A'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Screen B
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(),
                  ),
                );
              },
              child: Text('Go to Screen B'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Screen C
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionWidget(),
                  ),
                );
              },
              child: Text('Go to Screen C'),
            ),
          ],
        ),
      ),
    );
  }
}
