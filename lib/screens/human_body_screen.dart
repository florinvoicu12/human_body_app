import 'package:flutter/material.dart';
import 'package:human_body_doctor/screens/knee_screen.dart';
import 'package:human_body_doctor/screens/quad_screen.dart';

class HumanBodyScreen extends StatefulWidget {
  const HumanBodyScreen({super.key});

  @override
  State<HumanBodyScreen> createState() => _HumanBodyScreenState();
}

class _HumanBodyScreenState extends State<HumanBodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Human body")),
      body: SafeArea(
          child: Stack(children: [
        Center(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/human_body.png"))),
        BodyPart(
          top: MediaQuery.of(context).size.height / 1.76,
          left: MediaQuery.of(context).size.width / 2,
          width: 50,
          height: MediaQuery.of(context).size.height / 13.5,
          color: Colors.red,
          onTap: () {
            print("Knee tapped");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => KneeScreen()));
          },
        ),
        BodyPart(
          top: MediaQuery.of(context).size.height / 1.76,
          left: MediaQuery.of(context).size.width / 2.9,
          width: 50,
          height: MediaQuery.of(context).size.height / 13.5,
          color: Colors.green,
          onTap: () {
            print("Knee tapped");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => KneeScreen()));
          },
        ),
        BodyPart(
            top: MediaQuery.of(context).size.height / 2.4,
            left: MediaQuery.of(context).size.width / 3.2,
            width: MediaQuery.of(context).size.width / 5.8,
            height: MediaQuery.of(context).size.height / 7,
            onTap: () {
              print("Quad tapped");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => QuadScreen()));
            },
            color: Colors.blue),
        BodyPart(
            top: MediaQuery.of(context).size.height / 2.4,
            left: MediaQuery.of(context).size.width / 2.1,
            width: MediaQuery.of(context).size.width / 5.8,
            height: MediaQuery.of(context).size.height / 7,
            onTap: () {
              print("Quad tapped");
            },
            color: Colors.purple),
      ])),
    );
  }
}

class BodyPart extends StatelessWidget {
  const BodyPart({
    super.key,
    required this.top,
    required this.left,
    required this.width,
    required this.height,
    required this.onTap,
    required this.color,
  });
  final double top;
  final double left;
  final double width;
  final double height;
  final Function() onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            color: color,
            width: width,
            height: height,
          ),
        ));
  }
}
