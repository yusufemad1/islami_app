import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/quran/page/quran_view.dart';

class quranDetailsview extends StatefulWidget {
  static String routeNaame = 'quranDetails';

  quranDetailsview({super.key});

  @override
  State<quranDetailsview> createState() => _quranDetailsviewState();
}

class _quranDetailsviewState extends State<quranDetailsview> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var agrs = ModalRoute.of(context)?.settings.arguments as SuraDetial;
    var mediaQury = MediaQuery.of(context).size;
    var them = Theme.of(context);
    if (versesList.isEmpty) loadData(agrs.suraNumber);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/main_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('اسلامي'),
        ),
        body: Container(
          width: mediaQury.width,
          height: mediaQury.height,
          margin: EdgeInsets.only(
            right: 20,
            left: 20,
            top: 15,
            bottom: 80,
          ),
          padding: EdgeInsets.only(
            right: 20,
            left: 20,
            top: 15,
            bottom: 15,
          ),
          decoration: BoxDecoration(
            color: Color(0xffF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'صوره ${agrs.suraName}',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'El Messiri',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle_fill_rounded,
                    size: 28,
                  ),
                ],
              ),
              Divider(
                color: them.primaryColor,
              ),
              if (versesList.isEmpty)
                Center(
                  child: CircularProgressIndicator(
                    color: them.primaryColor,
                  ),
                ),
              if (versesList.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      " {${index + 1}} ${versesList[index]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'El Messiri',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    itemCount: versesList.length,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Future loadData(String suraNumber) async {
    String suraContent =
        await rootBundle.loadString('assets/files/$suraNumber.txt');
    versesList = suraContent.split('\n');
    setState(() {});
  }
}
