import 'package:final_ito/components/object.dart';
import 'package:flutter/material.dart';

class ObjectList extends StatefulWidget {
  const ObjectList({Key? key}) : super(key: key);

  @override
  State<ObjectList> createState() => _ObjectListState();
}

class _ObjectListState extends State<ObjectList> {
  int tappedIndex = -1; // Track the tapped index, -1 means no card tapped

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFC3EEFF),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 30,
            ),
          ),
          title: const Center(
            child: Text(
              'Objects',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: const Color(0xFF0C6699),
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: false,
        body: Column(
          children: [
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: objectData.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        tappedIndex = index;
                      });
                      //print('Card tapped at index $index');
                    },
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            height: 250,
                            width: 270,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/${objectData[index]['imgName'].toString()}',
                                ),
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.white.withOpacity(0.8),
                              child: Text(
                                objectData[index]['name'].toString(),
                                style: const TextStyle(
                                  color: Color(0xFF0C6699),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign:
                                    TextAlign.center, // Center align text
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ), // Adding space between the card list and container

            // Container to show tapped card details
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: tappedIndex != -1
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${objectData[tappedIndex]['name']}',
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Image.asset(
                            'assets/images/${objectData[tappedIndex]['image'].toString()}',
                            height: 250,
                            width:
                                400, // Adjust the height as needed for enlargement
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                          const SizedBox(height: 10),

                          Text(
                            '${objectData[tappedIndex]['description']}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center, // Center align text
                          ),
                          // Add other details you want to display
                        ],
                      )
                    : const SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Nothing to see here"),
                            Text("Scroll to right to see objects"),
                          ],
                        ),
                      ), // If no card tapped, show an empty SizedBox
              ),
            ),
          ],
        ),
      ),
    );
  }
}
