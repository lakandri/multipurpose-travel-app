import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ticketing_system/firebase_options.dart';
import 'package:ticketing_system/screens/specific_screen.dart/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ticketing App',
      home: SplashScreen(),
    );
  }
}
