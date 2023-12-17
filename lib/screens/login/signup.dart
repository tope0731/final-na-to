import 'package:final_ito/screens/home_screen.dart';
import 'package:final_ito/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignupScreen> {
  TextEditingController _userController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
              Gap(40),
              Center(
                child: Text(
                  'iSee',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF056FD0),
                  ),
                ),
              ),
              Center(
                child: Text(
                  '"See the world differently"',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF056FD0),
                  ),
                ),
              ),
              Gap(120),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            ),
                            Gap(30),
                            TextField(
                              controller: _userController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Username',
                              ),
                            ),
                            Gap(15),
                            TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Password',
                              ),
                            ),
                            Gap(20),
                            Text(
                              'Personal Information',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            ),
                            Gap(20),
                            TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Firstname',
                              ),
                            ),
                            Gap(20),
                            TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Lastname',
                              ),
                            ),
                            Gap(20),
                            TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Age',
                              ),
                            ),
                            Gap(20),
                            TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Birthdate',
                              ),
                            ),
                            Gap(20),
                            TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Address',
                              ),
                            ),
                            Gap(20),
                            TextField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Gender',
                              ),
                            ),
                            Gap(20),
                            Container(
                              height: 55,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF89CFF3),
                                  fixedSize: Size(175, 50),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (_) => LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(fontSize: 26),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
