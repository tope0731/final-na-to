import 'dart:io';

import 'package:camera/camera.dart';
import 'package:final_ito/main.dart';
import 'package:final_ito/screens/scanner/image_description.dart';
import 'package:flutter/material.dart';
import 'package:tflite_v2/tflite_v2.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _controller;
  File? file;
  var _recognitions;
  var v = "";
  void initState() {
    super.initState();
    loadmodel().then((value) {
      setState(() {});
    });
    _controller = CameraController(cameras[0], ResolutionPreset.max);
    _controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('Access denied');
            break;
          default:
            print(e.description);
            break;
        }
      }
    });
  }

  loadmodel() async {
    await Tflite.loadModel(
      model: "assets/model/model.tflite",
      labels: "assets/model/labels.txt",
    );
  }

  Future detectimage(String image) async {
    print('detected image');
    int startTime = DateTime.now().millisecondsSinceEpoch;
    var recognitions = await Tflite.runModelOnImage(
      path: image,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _recognitions = recognitions;
      v = recognitions.toString();
      // dataList = List<Map<String, dynamic>>.from(jsonDecode(v));
    });
    print(v);
    print("//////////////////////////////////////////////////");
    print(_recognitions);
    // print(dataList);
    print("//////////////////////////////////////////////////");
    int endTime = DateTime.now().millisecondsSinceEpoch;
    print("Inference took ${endTime - startTime}ms");
    return v;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              child: CameraPreview(_controller),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    child: MaterialButton(
                      onPressed: () async {
                        try {
                          await _controller.setFlashMode(FlashMode.auto);
                          XFile file = await _controller.takePicture();
                          await detectimage(file.path);
                          //eto yung tama
                          // if (_recognitions[0]['confidence'] < .98) {
                          //   print("try again");
                          //   showDialog(
                          //     context: context,
                          //     builder: (_) => AlertDialog(
                          //       content: Text("Try Again"),
                          //       title: Text("For Alert Message"),
                          //     ),
                          //     barrierDismissible: true,
                          //   );
                          // } else {
                          //   var flabel = _recognitions[0]['label'].toString();
                          //   var confidence = _recognitions[0]['confidence'];
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) =>
                          //           ImagePreview(file, flabel, confidence),
                          //     ),
                          //   );
                          // }
                          //trydito
                          //print('this is the file: $file');
                          var flabel = _recognitions[0]['label'].toString();
                          var confidence = _recognitions[0]['confidence'];
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ImageDescription(
                                      file, flabel, confidence)));
                        } on CameraException catch (e) {
                          debugPrint("Error occured while taking picture : $e");
                          return null;
                        }
                      },
                      color: Colors.white,
                      child: Text("Take Picture"),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
