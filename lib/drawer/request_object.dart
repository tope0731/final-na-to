import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RequestObject extends StatefulWidget {
  const RequestObject({super.key});

  @override
  State<RequestObject> createState() => _ListOfObjectState();
}

class _ListOfObjectState extends State<RequestObject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Request of Objects'),
        ),
        actions: [
          Icon(
            Icons.add,
          ),
          Gap(10)
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: Color.fromARGB(255, 157, 201, 237),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 6.5,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ListTile(
                    onTap: () {},
                    title: Center(
                      child: Text(
                        'Bear',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    leading: Image.asset(
                      'assets/images/bear.png',
                      fit: BoxFit.cover,
                    ),
                    trailing: Text(
                      'pending',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
