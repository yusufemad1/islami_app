import 'package:flutter/material.dart';

class TasbehView extends StatefulWidget {
  TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int counter = 0;
  int index = 0;
  double truns = 0;
  List<String> name = [
    "سُبْحَانَ اللَّهِ",
    "الحمد لله",
    " الله اكبر",
    "أستغفر الله",
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 10),
                child: Image.asset('assets/image/head of seb7a.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: AnimatedRotation(
                  turns: truns,
                  duration: Duration(seconds: 1),
                  child: Image.asset('assets/image/body of seb7a.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'عدد التسبيحات ',
              style: TextStyle(
                fontSize: 25,
                fontFamily: 'El Messiri',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 20),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromRGBO(183, 147, 95, 0.7)),
              width: 69,
              height: 81,
              child: Center(
                child: Text(
                  counter.toString(),
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() => truns += 1 / 30);
              if (counter == 31) {
                counter = 0;
                index++;
                if (index == 4) {
                  index = 0;
                }
              }
              counter++;
              setState(() {});
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromRGBO(183, 147, 95, 1)),
              width: 137,
              height: 51,
              child: Center(
                child: Text(
                  name[index],
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
