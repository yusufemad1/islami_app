import 'package:flutter/material.dart';
import 'package:islami_app/moduls/hadeth/page/hadeth_view.dart';

class HadethDetalisView extends StatelessWidget {
  static String RouteName = 'HadethDetalis';

  const HadethDetalisView({super.key});

  Widget build(BuildContext context) {
    var agrs = ModalRoute.of(context)?.settings.arguments as HadethData;
    var mediaQury = MediaQuery.of(context).size;
    var them = Theme.of(context);
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
              Text(
                '  ${agrs.title}',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'El Messiri',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Divider(
                color: them.primaryColor,
              ),
              Text(
                agrs.content,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'El Messiri',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
