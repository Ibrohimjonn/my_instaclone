import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/SignIn_page.dart';
import 'package:instagram_clone/pages/SignUp_page.dart';
import 'package:instagram_clone/pages/home_page.dart';
import 'package:instagram_clone/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Splash(title: 'splash'),
      routes: {
        Splash.id: (context) => Splash(title: 'splash',),
        Home.id: (context) => Home(title: 'home',),
        SignIn.id: (context) => SignIn(title: 'sign_in',),
        SignUp.id: (context) => SignUp(title: 'sign_up',),
      },
    );
  }
}
