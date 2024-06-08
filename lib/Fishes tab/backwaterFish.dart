import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/categories/backwaterDetails.dart';

class Backwaterfish extends StatefulWidget {
  const Backwaterfish({super.key});

  @override
  State<Backwaterfish> createState() => _BackwaterfishState();
}

class _BackwaterfishState extends State<Backwaterfish> {
   var catlafish = [
    'assets/catla.jpg',
    'assets/catla.jpg',
    'assets/catla.jpg',
    'assets/catla.jpg',
    'assets/catla.jpg',
    'assets/catla.jpg',
  ];
  var fishnames = ['Catla', 'Tuna', 'Whale', 'Tilapia', 'Pink perch', 'Ayala'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 3,
          mainAxisExtent: 190,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
            child: Container(
              color: Colors.white,
              child: Column(
                //
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Backwaterfulldetails()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(15),
                          height: 90,
                          width: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/catla.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                      Text(
                        fishnames[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: fishnames.length,
      ),
    );
  }
}