// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Recipe/fishDescription.dart';

class Recipescreen extends StatefulWidget {
  const Recipescreen({super.key});

  @override
  State<Recipescreen> createState() => _RecipescreenState();
}

class _RecipescreenState extends State<Recipescreen> {
  var fishlist = [
    'assets/Barbeq.jpg',
    'assets/Duff .jpeg',
    'assets/Grilled.png',
    'assets/Thaistyle.jpeg',
    'assets/Gheerice.jpg',
    'assets/Fish.jpg',
  ];
  var fishtype = [
    'Barbecued Trout',
    'dd',
    'dd',
    'dd',
    'dd',
    'dd',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      
      appBar: AppBar(
        leadingWidth: 140,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 6, 158, 171),
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Center(
                child: Text(
              'Recipes',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
        ],
      ),
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
                  Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FishDescription()));
                      },
                        child: Container(
                          margin: EdgeInsets.all(15),
                          height: 90,
                          width: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(fishlist[index]),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                       Text('Grilled Squid Salad',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: fishlist.length,
      ),
    );
  }
}
