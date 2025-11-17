import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 97, 186, 186),
        body: GradientContainer(
          Colors.green,
          const Color.fromARGB(255, 1, 111, 5),
        ) /*here gradientcontainer can be acessed
        like gradientcontainer.purple() */,
      ),
    ),
  );
}
