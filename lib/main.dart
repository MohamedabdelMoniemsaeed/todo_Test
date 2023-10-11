import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo/Screen/Home.dart';
import 'package:todo/Screen/Splash.dart';
import 'package:todo/Utals/Theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseFirestore.instance.settings =
      Settings(cacheSizeBytes: Settings.CACHE_SIZE_UNLIMITED);
      await FirebaseFirestore.instance.disableNetwork();
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
