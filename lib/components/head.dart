import 'package:flutter/material.dart';
import 'package:human_body_doctor/components/body_part.dart';
import 'package:human_body_doctor/screens/head_screen.dart';

class Head extends StatelessWidget {
  const Head({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 0),
          child: Image.asset(
            "assets/head_and_neck.png",
          ),
        ),
        BodyPart(
            onTap: () {
              print("head tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HeadScreen()));
            },
            leftPadding: 5,
            topPadding: 0,
            width: 100,
            height: 120)
      ]),
    );
  }
}
