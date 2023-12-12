import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForProfile extends StatefulWidget {
  const ForProfile({super.key});

  @override
  State<ForProfile> createState() => _ProfileState();
}

class _ProfileState extends State<ForProfile> {
  Color historyColor = Color(0xFFE26EE5);
  Color achieveColor = Color(0xFF7E30E1);

  void changeColor() {
    setState(() {
      historyColor = Color(0xFF7E30E1);
      achieveColor = Color(0xFFE26EE5);
    });
  }

  void hisColor() {
    setState(() {
      achieveColor = Color(0xFF7E30E1);
      historyColor = Color(0xFFE26EE5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/loading.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.settings,
                      size: 35,
                    ),
                  ),
                  Gap(10)
                ],
              ),
              Gap(50),
              Center(
                child: Container(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                    'assets/images/avatar.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(20),
              Center(
                child: Text(
                  'Username',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Gap(40),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: historyColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: hisColor,
                                child: Text(
                                  'History',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                            Gap(8),
                            Expanded(
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: achieveColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: changeColor,
                                child: Text(
                                  'Achievement',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
