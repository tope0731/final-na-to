import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:camera/camera.dart';
import 'package:final_ito/screens/scanner/object_in_sentence_screen.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Description"),
      ),
      body: Container(
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
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
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.label,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
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
                          iconSize: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    // for checking
                    Text(
                      'Confidence level: ${widget.confidence}',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15)),
                  height: 80,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'This is for the descriptionThis is for the descriptionThis is for the descriptionThis is for the descriptionThis is for the description',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () async {
                      print(picture);
                      print(widget.file.path);
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ObjectSentence(files, label),
                        ),
                      );
                    },
                    child: Text(
                      "In a sentence",
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
