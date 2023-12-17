import 'package:final_ito/drawer/list_of_object.dart';
import 'package:final_ito/drawer/request_object.dart';
import 'package:final_ito/drawer/switch_account.dart';
import 'package:final_ito/screens/game/game.dart';
import 'package:final_ito/screens/login/login_screen.dart';
import 'package:final_ito/screens/scanner/camera_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF89CFF3)),
              child: Center(
                child: Text(
                  'Teacher',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              onTap: () {},
              title: const Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.manage_accounts),
              onTap: () {},
              title: const Text('Students'),
            ),
            ListTile(
              leading: Icon(Icons.list),
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => ListOfObject()));
              },
              title: const Text('List of Objects'),
            ),
            ListTile(
              leading: Icon(Icons.request_page),
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => const RequestObject()));
              },
              title: const Text('Request Object'),
            ),
            ListTile(
              leading: Icon(Icons.switch_account),
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => const SwitchAccount()));
              },
              title: const Text('Switch Account'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (_) => const LoginScreen()));
              },
              title: const Text('Logout'),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/loading.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 180),
              Image.asset('assets/images/finalLogo.png'),
              const SizedBox(height: 10),
              const Text(
                'Welcome to iSee teacher!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                width: 250,
                child: const Text(
                  '"Explore, Imagine, Discover: Pixel Playtime - Where pictures come to life, just for kids!"',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (_) => const Game(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/games_button.png',
                  height: 120,
                ),
              ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (_) => const CameraScreen(),
                    ),
                  );
                },
                child: Image.asset('assets/images/scan_button.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
