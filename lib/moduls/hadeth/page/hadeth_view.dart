import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_detils.dart';

class HadethView extends StatefulWidget {
  HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethData> allHdeathContent = [];

  @override
  Widget build(BuildContext context) {
    var mediaQury = MediaQuery.of(context).size;
    var them = Theme.of(context);
    if (allHdeathContent.isEmpty) loadData();
    return Column(
      children: [
        Image.asset(
          'assets/image/59253-quran-basmala-islamic-kufic-arabic-calligraphy-icon.png',
          height: mediaQury.height * 0.2,
        ),
        Divider(
          color: them.primaryColor,
          thickness: 1.2,
        ),
        Text(
          'الاحاديث',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: 'El Messiri',
          ),
        ),
        Divider(
          color: them.primaryColor,
          thickness: 1.2,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethDetalisView.RouteName,
                    arguments: allHdeathContent[index]);
              },
              child: Text(
                allHdeathContent[index].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'El Messiri',
                ),
              ),
            ),
            itemCount: allHdeathContent.length,
          ),
        )
      ],
    );
  }

  Future<void> loadData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadethList = content.split('#');

    for (int i = 0; i < allHadethList.length; i++) {
      String singleHdeath = allHadethList[i].trim();
      int titleIndex = singleHdeath.indexOf('\n');
      String title = singleHdeath.substring(0, titleIndex);
      String content = singleHdeath.substring(titleIndex + 1);
      HadethData headthData = HadethData(
        title,
        content,
      );
      allHdeathContent.add(headthData);
    }
    setState(() {});
  }
}

class HadethData {
  final String title;
  final String content;

  HadethData(this.title, this.content);
}
