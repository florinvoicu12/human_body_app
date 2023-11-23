import 'package:flutter/material.dart';
import 'package:human_body_doctor/components/body_part.dart';
import 'package:human_body_doctor/screens/calves_tibia_screen.dart';
import 'package:human_body_doctor/screens/foot_screen.dart';
import 'package:human_body_doctor/screens/knee_screen.dart';
import 'package:human_body_doctor/screens/quad_screen.dart';

class Legs extends StatelessWidget {
  const Legs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Image.asset(
          "assets/quads_knees_calves_and_feet.png",
        ),
        BodyPart(
            onTap: () {
              print("quads tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const QuadScreen()));
            },
            leftPadding: 26,
            topPadding: 0,
            width: 145,
            height: 85),
        BodyPart(
            onTap: () {
              print("knee tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const KneeScreen()));
            },
            leftPadding: 36,
            topPadding: 85,
            width: 125,
            height: 58),
        BodyPart(
            onTap: () {
              print("calves or tibia tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const CalvesTibiaScreen()));
            },
            leftPadding: 36,
            topPadding: 143,
            width: 125,
            height: 100),
        BodyPart(
            onTap: () {
              print("foot tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const FootScreen()));
            },
            leftPadding: 36,
            topPadding: 243,
            width: 125,
            height: 60),
      ]),
    );
  }
}
