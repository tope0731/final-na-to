import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:camera/camera.dart';
import 'package:final_ito/components/object.dart';
import 'package:final_ito/screens/home_screen.dart';
import 'package:final_ito/screens/scanner/object_in_sentence_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ImageDescription extends StatefulWidget {
  ImageDescription(this.file, this.label, this.confidence, {super.key});
  XFile file;
  var label;
  var confidence;
  @override
  State<ImageDescription> createState() => _nameState();
}

class _nameState extends State<ImageDescription> {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    super.initState();

    setAudio();

    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.release);

    final player = AudioCache(prefix: 'assets/audio/');
    final url = await player.load('tumbler.mp3');
    audioPlayer.setSourceUrl(url.path);
    print("audio called");
  }

  @override
  Widget build(BuildContext context) {
    XFile files = XFile(widget.file.path);
    File picture = File(widget.file.path);
    String label = widget.label;
    int object = 0;

    if (widget.label == 'BAG') {
      object = 0;
    } else if (widget.label == 'BOOK') {
      object = 1;
    } else if (widget.label == 'CHAIR') {
      object = 2;
    } else if (widget.label == 'RULER') {
      object = 3;
    } else if (widget.label == 'PENCIL') {
      object = 4;
    } else if (widget.label == 'NOTEBOOK') {
      object = 5;
    } else if (widget.label == 'CRAYONS') {
      object = 6;
    } else if (widget.label == 'ERASER') {
      object = 7;
    } else if (widget.label == 'SHOES') {
      object = 8;
    } else if (widget.label == 'SCISSORS') {
      object = 9;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (_) => HomePageScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.home,
              size: 50,
            ),
          ),
          Gap(10),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/description_bg.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Gap(90),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF89CFF3), width: 4),
                      ),
                      height: 299,
                      width: 171,
                      child: Image.file(
                        picture,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.label,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF056FD0),
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            if (isPlaying) {
                              await audioPlayer.pause();
                            } else {
                              await audioPlayer.resume();
                            }
                          },
                          icon: Icon(
                            isPlaying ? Icons.pause : Icons.play_arrow,
                          ),
                          iconSize: 24,
                          color: Color(0xFF056FD0),
                        ),
                      ],
                    ),
                    // for checking
                    // Text(
                    //   'Confidence level: ${widget.confidence}',
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //   ),
                    // ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15)),
                    height: 80,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        objectData[object]['description'].toString(),
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Gap(15),
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
                              border: Border.all(color: Colors.pink),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                objectData[object]['s1'].toString(),
                                style: TextStyle(color: Colors.blue),
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
                              border: Border.all(color: Colors.pink),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                objectData[object]['s2'].toString(),
                                style: TextStyle(color: Colors.blue),
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
                              border: Border.all(color: Colors.pink),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                objectData[object]['s3'].toString(),
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
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
