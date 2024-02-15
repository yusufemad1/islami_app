import 'package:flutter/material.dart';
import 'package:islami_app/moduls/settings/page/setting_view.dart';

import '../moduls/hadeth/page/hadeth_view.dart';
import '../moduls/quran/page/quran_view.dart';
import '../moduls/radio/page/radio_view.dart';
import '../moduls/tasbeh/page/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static String RouteName = 'Layout';

  LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List screans = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/image/main_background.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('اسلامي'),
        ),
        body: screans[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                      'assets/image/quran_icon.png',
                    ),
                  ),
                  label: 'quran'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/hadeth_icon.png')),
                  label: 'Hedeth'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/sebha_blue.png')),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/image/radio_blue.png')),
                  label: 'radio'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  label: 'settings'),
            ]),
      ),
    );

    Stack(
      children: [
        Image.asset(
          'assets/image/main_background.png',
          height: mediaQuery.height,
          width: mediaQuery.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('اسلامي'),
          ),
        ),
      ],
    );
  }
}
//
// Stack(
// children: [
// Image.asset(
// 'assets/image/main_background.png',
// height: mediaQuery.height,
// width: mediaQuery.width,
// fit: BoxFit.cover,
// ),
// Scaffold(
// appBar: AppBar(
// title: Text('اسلامي'),
// ),
//
// ),
// ],
// );
