import 'package:flutter/material.dart';

class TasbehView extends StatelessWidget {
  const TasbehView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Tasbeh view',
        style: TextStyle(
          fontSize: 40,
          fontFamily: 'El Messiri',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
