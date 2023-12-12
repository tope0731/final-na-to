import 'dart:io';

import 'package:camera/camera.dart';
import 'package:final_ito/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ObjectSentence extends StatefulWidget {
  ObjectSentence(this.files, this.label, {super.key});
  XFile files;
  String label;
  @override
  State<ObjectSentence> createState() => _ObjectSentenceState();
}

class _ObjectSentenceState extends State<ObjectSentence> {
  @override
  Widget build(BuildContext context) {
    File picture = File(widget.files.path);
    String label = widget.label;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/for_scanner.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    height: 299,
                    width: 171,
                    child: Image.file(
                      picture,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  width: 220,
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Center(
                    child: Text(
                      label,
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(color: Colors.pink)),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Sentence 1',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(color: Colors.green)),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Sentence 2',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(color: Colors.black)),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Sentence 3',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HomePageScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Go Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
