import 'package:flutter/material.dart';
import 'package:human_body_doctor/components/body_part.dart';
import 'package:human_body_doctor/screens/abs_screen.dart';
import 'package:human_body_doctor/screens/arms_screen.dart';
import 'package:human_body_doctor/screens/chest_screen.dart';
import 'package:human_body_doctor/screens/shoulder_screen.dart';

class ArmsShouldersChestAbs extends StatelessWidget {
  const ArmsShouldersChestAbs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Image.asset(
          "assets/abs_and_chest.png",
        ),
        BodyPart(
            onTap: () {
              print("shoulder tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const ShoulderScreen()));
            },
            leftPadding: 18,
            topPadding: 10,
            width: 50,
            height: 60),
        BodyPart(
            onTap: () {
              print("shoulder tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const ShoulderScreen()));
            },
            leftPadding: 173,
            topPadding: 10,
            width: 50,
            height: 60),
        BodyPart(
            onTap: () {
              print("chest tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const ChestScreen()));
            },
            leftPadding: 71,
            topPadding: 18,
            width: 98,
            height: 70),
        BodyPart(
            onTap: () {
              print("arm tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const ArmsScreen()));
            },
            leftPadding: 4,
            topPadding: 71,
            width: 50,
            height: 84),
        BodyPart(
            onTap: () {
              print("arm tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const ArmsScreen()));
            },
            leftPadding: 187,
            topPadding: 71,
            width: 50,
            height: 84),
        BodyPart(
            onTap: () {
              print("abs tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const AbsScreen()));
            },
            leftPadding: 71,
            topPadding: 88,
            width: 98,
            height: 70),
      ]),
    );
  }
}
