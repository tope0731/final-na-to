import 'package:final_ito/drawer/list_of_object.dart';
import 'package:final_ito/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchAccount extends StatelessWidget {
  const SwitchAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Text(
            'Switch Account',
            style: TextStyle(color: Colors.blue, fontSize: 25),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
          ),
          scrollDirection: Axis.vertical,
          children: [
            GridTile(
              child: Image.asset('assets/images/USER1.png'),
              footer: Center(
                child: Text(
                  'USER1',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            GridTile(
              child: Image.asset('assets/images/USER2.png'),
              footer: Center(
                child: Text(
                  'USER2',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GridTile(
              child: Image.asset('assets/images/USER3.png'),
              footer: Center(
                child: Text(
                  'USER3',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            GridTile(
              child: Image.asset('assets/images/USER4.png'),
              footer: Center(
                child: Text(
                  'USER4',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            GridTile(
              child: Image.asset('assets/images/USER5.png'),
              footer: Center(
                child: Text(
                  'USER5',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            GridTile(
              child: Image.asset('assets/images/USER6.png'),
              footer: Center(
                child: Text(
                  'USER6',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
