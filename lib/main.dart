import 'package:camera/camera.dart';
import 'package:final_ito/screens/home_screen.dart';
import 'package:final_ito/screens/login/loading_screen.dart';
import 'package:final_ito/screens/scanner/camera_screen.dart';
import 'package:final_ito/screens/scanner/object_in_sentence_screen.dart';
import 'package:flutter/material.dart';

late List<CameraDescription> cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const iSee());
}

class iSee extends StatelessWidget {
  const iSee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}
