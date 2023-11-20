import 'package:flutter/material.dart';
import 'package:human_body_doctor/screens/human_body_screen.dart';

void main() {
  runApp(const DrinksOrdersApp());
}

class DrinksOrdersApp extends StatelessWidget {
  const DrinksOrdersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: HumanBodyScreen());
  }
}
