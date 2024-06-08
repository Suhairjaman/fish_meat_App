// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Fishes%20tab/fishTypes.dart';
import 'package:flutter_application_1/Recipe/recipeScreen.dart';
import 'package:flutter_application_1/screens/aboutScreen.dart';
import 'package:flutter_application_1/screens/homeScreen.dart';


class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  var myfishes = [
    'assets/fish7.jpg',
    'assets/fish1.jpg',
    'assets/fish8.jpg',
  ];
  var fishcategories = [
    'assets/seafish.jpg',
    'assets/freshfish.jpg',
    'assets/crab.jpg',
    'assets/prawn.jpg',
  ];
  var fishnames = ['Fresh Fish', 'Seer fish', 'Crab', 'Pomfret'];
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.grey[200],
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 6, 158, 171),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage('assets/user.png'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Welcome to Healthy Fish',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )),
              ListTile(
                title: Align(
                  alignment: Alignment(-0.7, 0),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                leading: SizedBox(
                  height: 30,
                  child: Image.asset('assets/loginn.png'),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Align(
                  alignment: Alignment(-0.7, 0),
                  child: const Text(
                    'All products',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                leading: SizedBox(
                  height: 30,
                  child: Image.asset('assets/products.png'),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Align(
                  alignment: Alignment(-0.7, 0),
                  child: const Text(
                    'Refer & Earn',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                leading: SizedBox(
                  height: 30,
                  child: Image.asset('assets/refer.png'),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Align(
                  alignment: Alignment(-0.7, 0),
                  child: const Text(
                    'Offers',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                leading: SizedBox(
                  height: 30,
                  child: Image.asset('assets/offer.png'),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                  title: Align(
                    alignment: Alignment(-0.7, 0),
                    child: const Text(
                      'Recipes',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  leading: SizedBox(
                    height: 30,
                    child: Image.asset('assets/recipes.png'),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Recipescreen(),
                        ));
                  }),
              ListTile(
                title: Align(
                  alignment: Alignment(-0.7, 0),
                  child: const Text(
                    'FAQ',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                leading: SizedBox(
                  height: 30,
                  child: Image.asset('assets/faq.png'),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Align(
                  alignment: Alignment(-0.7, 0),
                  child: const Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                leading: SizedBox(
                  height: 30,
                  child: Image.asset('assets/about.png'),
                ),
                onTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => About(),
                        ));
                },
              ),
              ListTile(
                title: Align(
                  alignment: Alignment(-0.7, 0),
                  child: const Text(
                    'Contact',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                leading: SizedBox(
                  height: 30,
                  child: Image.asset('assets/contact.png'),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 120,
          backgroundColor: Color.fromARGB(255, 6, 158, 171),
          title: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: InkWell(
                      onTap: () => scaffoldKey.currentState!.openDrawer(),
                      child: Image.asset(
                        'assets/menu.png',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 112),
                    child: SizedBox(
                      height: 45,
                      width: 50,
                      child: Image.asset('assets/healthyfish.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/notification.png',
                          fit: BoxFit.fill,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 3),
                    child: SizedBox(
                        height: 27,
                        width: 25,
                        child: Image.asset(
                          'assets/cart.png',
                          fit: BoxFit.fill,
                        )),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(left: 7, right: 7),
                  height: 45,
                  padding: EdgeInsets.only(left: 7),
                  color: Colors.white,
                  child: TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        labelText: 'Search for fish',
                        labelStyle: TextStyle(color: Colors.grey)),
                  )),
            ],
          ),
        ),
        body: Column(
          children: [
            CarouselSlider.builder(
              itemCount: myfishes.length,
              itemBuilder: (BuildContext context, int index, _) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 15, left: 25, right: 25, bottom: 1),
                  child: Container(
                    width: 360,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(myfishes[index]
                              // 'assets/fish5.jpg',
                              ),
                          fit: BoxFit.fill),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                //  height: , // Height of the carousel
                aspectRatio: 10 / 7, // Aspect ratio of each item
                viewportFraction: 8, // Fraction of the viewport to show
                initialPage: 0, // Initial page index
                enableInfiniteScroll: true, // Infinite scroll
                autoPlay: true, // Auto play carousel
                autoPlayInterval: Duration(seconds: 3), // Auto play interval
                autoPlayAnimationDuration:
                    Duration(milliseconds: 800), // Animation duration
                autoPlayCurve: Curves.fastOutSlowIn, // Animation curve
                enlargeCenterPage: true, // Enlarge the centered item
                scrollDirection: Axis.horizontal, // Scroll direction
              ),
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Categories',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
            Expanded(
              child: Container(
                color: Colors.white,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                    mainAxisExtent: 190,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Fishtype()));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: SizedBox(
                              height: 150,
                              width: 160,
                              child: Image.asset(
                                fishcategories[index],
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            fishnames[index],
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: fishcategories.length,
                ),
              ),
            ),
          ],
        ));
  }
}
