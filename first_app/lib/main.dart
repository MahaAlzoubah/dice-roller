import 'package:flutter/material.dart';
import 'package:first_app/bg_container.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
      body:BgContainer(  Color.fromARGB(255, 234, 212, 212),
                 Color.fromARGB(255, 255, 255, 255),),
      ),
    ),
  );
}

