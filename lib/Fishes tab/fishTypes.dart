// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Fishes%20tab/backwaterFish.dart';
import 'package:flutter_application_1/Fishes%20tab/freshFish.dart';
import 'package:flutter_application_1/Fishes%20tab/seaFish.dart';
import 'package:flutter_application_1/screens/homeScreen.dart';
import 'package:scrollable_list_tabview/model/scrollable_list_tab.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

class Fishtype extends StatefulWidget {
  const Fishtype({super.key});

  @override
  State<Fishtype> createState() => _FishtypeState();
}

class _FishtypeState extends State<Fishtype> {
  var fishnames = ['Catla', 'Tuna', 'Whale', 'Tilapia', 'Pink perch', 'Ayala'];
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            'Fresh Fish',
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Color.fromARGB(255, 6, 158, 171),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(),
                child: TabBar(
                    labelColor: Colors.black,
                    indicatorColor: Colors.black,
                    labelPadding: EdgeInsets.all(2),
                    tabs: [
                      Tab(
                        text: 'SEA FISH',
                      ),
                      Container(width: 130, child: Tab(text: 'BACKWATER FISH')),
                      Tab(text: 'FRESH FISH'),
                    ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  Seafish(),
                  Backwaterfish(),
                  FreshfishScreen(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
