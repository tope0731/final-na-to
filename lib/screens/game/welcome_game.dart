import 'package:final_ito/screens/game/game.dart';
import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class WelcomeGame extends StatefulWidget {
  const WelcomeGame({super.key});

  @override
  State<WelcomeGame> createState() => _WelcomeGameState();
}

class _WelcomeGameState extends State<WelcomeGame> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/PLAY.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image(
                image: AssetImage("assets/images/hello.gif"),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Game()));
                  print("hello");
                },
                child: StrokeText(
                  text: "PLAY NOW!",
                  textStyle: TextStyle(
                    fontSize: 35,
                    color: Color(0xFF337AA9),
                  ),
                  strokeColor: Colors.white,
                  strokeWidth: 5,
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF337AA9)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
