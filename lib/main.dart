import 'package:flutter/material.dart';
import 'package:todo/Screen/Home.dart';
import 'package:todo/Screen/Splash.dart';
import 'package:todo/Utals/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.laghtTheme,
      darkTheme: AppTheme.darkTheme,
      routes: {
        HomeScreen.rouatName: (_) => HomeScreen(),
        SplashScreen.rouatName: (_) => SplashScreen(),
      },
      initialRoute: SplashScreen.rouatName,
    );
  }
}
