import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hadeth View',
        style: TextStyle(
          fontSize: 40,
          fontFamily: 'El Messiri',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    ;
  }
}
