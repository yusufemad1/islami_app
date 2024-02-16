import 'package:flutter/material.dart';
import 'package:islami_app/config/application_theme_manager.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/moduls/quran/page/quran_details.dart';
import 'package:islami_app/moduls/splash/page/Splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: ApplicationThemeManager.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.RouteName,
      routes: {
        SplashView.RouteName: (context) => SplashView(),
        LayoutView.RouteName: (context) => LayoutView(),
        quranDetailsview.routeNaame: (context) => quranDetailsview(),
      },
    );
  }
}
