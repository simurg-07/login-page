import 'package:flutter/material.dart';

import 'login.dart';


class Empty extends StatefulWidget {
  @override
  State<Empty> createState() => _Empty();
}

class _Empty  extends State<Empty > {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.6, 0.8),
            colors: <Color>[
              Color(0xffeB4AEFF),
              Color(0xfff5850C0),

            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child:  const Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(child: Text("EisGame", style:TextStyle(fontSize: 60, color: Colors.white),)),

      ),
      ),
    );
  }
}
