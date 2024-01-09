import 'package:final_ito/components/appbar.dart';
import 'package:final_ito/screens/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0C6699),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFFC3EEFF),
            size: 35,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            color: Color(0xFFC3EEFF),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFC3EEFF),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/bear.png'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Your Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            const Text('My Dashboard',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text('Student'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    title: Text('History Achievements'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    title: Text('Achievements'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const onBoardingScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0C6699), // Change button color here
                  ),
                  child: const Text('Log Out'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
