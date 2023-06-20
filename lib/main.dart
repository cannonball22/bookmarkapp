import 'package:flutter/material.dart';
import './Presentation/UI/Screens/splash_screen.dart';
import 'Presentation/UI/Pages/onboarding_widget.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:   OnBoardingWidget(),
    );
  }
}


