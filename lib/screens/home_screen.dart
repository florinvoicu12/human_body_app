import 'package:flutter/material.dart';
import 'package:human_body_doctor/components/arms_hands_quads.dart';
import 'package:human_body_doctor/components/arms_shoulders_chest_abs.dart';
import 'package:human_body_doctor/components/head.dart';
import 'package:human_body_doctor/components/legs.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Head(),
              ArmsShouldersChestAbs(),
              ArmsHandsQuads(),
              Legs(),
            ],
          ),
        ),
      ),
    );
  }
}
