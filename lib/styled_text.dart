import 'package:flutter/material.dart';
class StyledText extends StatelessWidget{
  const StyledText(this.text1,{super.key});

  final String text1;
  @override
  Widget build(context)
  {
    return Text(
              text1,
              style: TextStyle(
                color: Color.fromARGB(255, 1, 26, 23),
                fontSize: 35,
              ),
            );
  }

}