import 'package:flutter/material.dart';
import 'package:rifqi_dart_flutter_dev/pages/splash_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SplashPage()
    );
  }
}