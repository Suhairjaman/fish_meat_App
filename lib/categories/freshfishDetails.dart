import 'package:flutter/material.dart';

class Freshfishdetails extends StatefulWidget {
  const Freshfishdetails({super.key});

  @override
  State<Freshfishdetails> createState() => _FreshfishdetailsState();
}

class _FreshfishdetailsState extends State<Freshfishdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('fresh fish')),
    );
  }
}