import 'package:final_ito/components/object.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListOfObject extends StatefulWidget {
  ListOfObject({super.key});

  @override
  State<ListOfObject> createState() => _ListOfObjectState();
}

class _ListOfObjectState extends State<ListOfObject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'List of Objects',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Color(0xFFA2DFF4),
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: Color(0xFFA2DFF4),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: objectData.length,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xFF89CFF3),
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
                        objectData[index]['name'].toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    leading: SizedBox(
                      width: 100, // Adjust the width as needed
                      child: Image.asset(
                        'assets/images/${objectData[index]['imgName'].toString()}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
