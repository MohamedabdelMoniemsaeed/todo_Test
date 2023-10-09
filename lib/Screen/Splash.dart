import 'package:flutter/material.dart';
import 'package:todo/Screen/Home.dart';
import 'package:todo/Utals/Images.dart';

class SplashScreen extends StatefulWidget {
  static const String rouatName = "SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
     Future.delayed(Duration(seconds: 2),(){
      Navigator.pushNamed(context, HomeScreen.rouatName);
    });
  }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body:
        AppImage.background
      
    );
  }
}
