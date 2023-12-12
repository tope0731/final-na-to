import 'package:final_ito/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class ViewResult extends StatefulWidget {
  const ViewResult({super.key});

  @override
  State<ViewResult> createState() => _nameState();
}

class _nameState extends State<ViewResult> {
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image(
                        image: AssetImage(
                          "assets/images/hello.gif",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    StrokeText(
                      text: "Tumbler",
                      textStyle: TextStyle(
                        fontSize: 40,
                        color: Color(0xFF0C5C89),
                      ),
                      strokeColor: Colors.white,
                      strokeWidth: 5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image(
                        image: AssetImage(
                          "assets/images/hello.gif",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    StrokeText(
                      text: "Tumbler",
                      textStyle: TextStyle(
                        fontSize: 40,
                        color: Color(0xFF0C5C89),
                      ),
                      strokeColor: Colors.white,
                      strokeWidth: 5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image(
                        image: AssetImage(
                          "assets/images/hello.gif",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    StrokeText(
                      text: "Tumbler",
                      textStyle: TextStyle(
                        fontSize: 40,
                        color: Color(0xFF0C5C89),
                      ),
                      strokeColor: Colors.white,
                      strokeWidth: 5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image(
                        image: AssetImage(
                          "assets/images/hello.gif",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    StrokeText(
                      text: "Milktea",
                      textStyle: TextStyle(
                        fontSize: 40,
                        color: Color(0xFF0C5C89),
                      ),
                      strokeColor: Colors.white,
                      strokeWidth: 5,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image(
                        image: AssetImage(
                          "assets/images/hello.gif",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    StrokeText(
                      text: "Jollibee",
                      textStyle: TextStyle(
                        fontSize: 40,
                        color: Color(0xFF0C5C89),
                      ),
                      strokeColor: Colors.white,
                      strokeWidth: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => HomePageScreen()));
                    print("hello");
                  },
                  child: StrokeText(
                    text: "Home",
                    textStyle: TextStyle(
                      fontSize: 25,
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
      ),
    );
  }
}
