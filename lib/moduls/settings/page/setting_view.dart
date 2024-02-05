import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'SettingView',
        style: TextStyle(
          fontSize: 40,
          fontFamily: 'El Messiri',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
