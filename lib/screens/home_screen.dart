import 'package:final_ito/profile/for_profile.dart';
import 'package:final_ito/screens/scanner/camera_screen.dart';
import 'package:final_ito/screens/game/welcome_game.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/Loading Screen.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'iSee',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900),
                  ),
                ),
                const Text(
                  "\"See the world differently\"",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  height: 70,
                ),
                Image.asset('assets/images/tryhome.gif'),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ForProfile(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Profile',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => WelcomeGame(),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.gamepad_rounded,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Game',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CameraScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.camera,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Scan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
