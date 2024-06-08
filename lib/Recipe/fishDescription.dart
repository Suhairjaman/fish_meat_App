// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FishDescription extends StatefulWidget {
  const FishDescription({super.key});

  @override
  State<FishDescription> createState() => _FishDescriptionState();
}

class _FishDescriptionState extends State<FishDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 158, 171),
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Duff .jpeg',),fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              height: 430,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('INGREDIENTS',style: TextStyle(fontWeight:FontWeight.bold ),),
                    SizedBox(height: 15,),
                    Text('4 fish steak pieces King fish or pomfret work well           1/2 tsp of red chilli powder,                                                  1/2 tsp of black pepper powder')
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
