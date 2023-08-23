import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:green_tech/home_page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Green Tech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: const Color.fromARGB(255, 31, 145, 39).withBlue(10),
        splash: const ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(60)),
            child: Image(image: AssetImage("assets/logo.jpeg"))),
        duration: 2000,
        nextScreen: const Home(),
      ),
    );
  }
}
