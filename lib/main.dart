import 'package:flutter/material.dart';
import 'constants.dart';
import 'pages/welcome/welcome_page.dart';
import 'home_moviese/home.dart';
import 'home_moviese/movies.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const WelcomePage(),
    );
  }
}
