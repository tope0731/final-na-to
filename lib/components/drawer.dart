import 'package:final_ito/auth/auth_page.dart';
import 'package:final_ito/drawer/list_of_object.dart';
import 'package:final_ito/drawer/profile.dart';
import 'package:final_ito/drawer/request_object.dart';
import 'package:final_ito/drawer/switch_account.dart';
import 'package:final_ito/screens/login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: const Color(0xFF0C6699)),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Welcome, Teacher!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          buildListTile(
            icon: Icons.person,
            title: 'Profile',
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (_) => ProfileUI()),
              );
            },
          ),
          buildListTile(
            icon: Icons.list,
            title: 'List of Objects',
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (_) => ObjectList()),
              );
            },
          ),
          buildListTile(
            icon: Icons.request_page,
            title: 'Request Object',
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (_) => ImagePickerScreen()),
              );
            },
          ),
          buildListTile(
            icon: Icons.logout,
            title: 'Logout',
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacement(
                context,
                CupertinoPageRoute(builder: (_) => AuthPage()),
              );
            },
          ),
        ],
      ),
    );
  }

  ListTile buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      onTap: onTap,
      title: Text(title),
    );
  }
}
