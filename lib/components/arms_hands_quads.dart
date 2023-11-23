import 'package:flutter/material.dart';
import 'package:human_body_doctor/components/body_part.dart';
import 'package:human_body_doctor/screens/abs_screen.dart';
import 'package:human_body_doctor/screens/arms_screen.dart';
import 'package:human_body_doctor/screens/hand_screen.dart';
import 'package:human_body_doctor/screens/quad_screen.dart';

class ArmsHandsQuads extends StatelessWidget {
  const ArmsHandsQuads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Image.asset(
          "assets/arms_and_pelvis.png",
        ),
        BodyPart(
            onTap: () {
              print("arm tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const ArmsScreen()));
            },
            leftPadding: 18,
            topPadding: 0,
            width: 50,
            height: 95),
        BodyPart(
            onTap: () {
              print("arm tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const ArmsScreen()));
            },
            leftPadding: 222,
            topPadding: 0,
            width: 50,
            height: 95),
        BodyPart(
            onTap: () {
              print("hand tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const HandScreen()));
            },
            leftPadding: 0,
            topPadding: 95,
            width: 55,
            height: 72),
        BodyPart(
            onTap: () {
              print("hand tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const HandScreen()));
            },
            leftPadding: 235,
            topPadding: 95,
            width: 55,
            height: 72),
        BodyPart(
            onTap: () {
              print("abs tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const AbsScreen()));
            },
            leftPadding: 95,
            topPadding: 0,
            width: 98,
            height: 60),
        BodyPart(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const AbsScreen()));
            },
            leftPadding: 95,
            topPadding: 60,
            width: 98,
            height: 70),
        BodyPart(
            onTap: () {
              print("quads tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const QuadScreen()));
            },
            leftPadding: 72,
            topPadding: 130,
            width: 142,
            height: 44),
      ]),
    );
  }
}
