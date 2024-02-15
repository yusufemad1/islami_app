import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 130),
          child: Image.asset(
              'assets/image/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Text(
            'ازاعه القران الكريم',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'El Messiri',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 110, top: 40),
          child: Row(
            children: [
              Icon(
                Icons.skip_previous,
                color: Color(0xffB7935F),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40),
                child: Icon(
                  Icons.play_arrow,
                  color: Color(0xffB7935F),
                  size: 50,
                ),
              ),
              Icon(
                Icons.skip_next,
                color: Color(0xffB7935F),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
