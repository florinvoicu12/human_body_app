import 'package:flutter/material.dart';
import 'package:human_body_doctor/screens/chest_screen.dart';
import 'package:human_body_doctor/screens/head_screen.dart';
import 'package:human_body_doctor/screens/knee_screen.dart';
import 'package:human_body_doctor/screens/quad_screen.dart';
import 'package:human_body_doctor/screens/shoulder_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Human body screen 2")),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0, top: 0),
                    child: Image.asset(
                      "assets/head_and_neck.png",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("head tapped");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HeadScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Container(
                        width: 100,
                        height: 120,
                        color: Colors.transparent,
                      ),
                    ),
                  )
                ]),
              ),
              Center(
                child: Stack(children: [
                  Image.asset(
                    "assets/abs_and_chest.png",
                  ),
                  GestureDetector(
                    onTap: () {
                      print("shoulder tapped");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ShoulderScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, top: 10),
                      child: Container(
                        width: 50,
                        height: 60,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("shoulder tapped");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ShoulderScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 173.0, top: 10),
                      child: Container(
                        width: 50,
                        height: 60,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("pecs tapped");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const ChestScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 71.0, top: 18),
                      child: Container(
                        width: 98,
                        height: 70,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("abs tapped");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 71.0, top: 88),
                      child: Container(
                        width: 98,
                        height: 70,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("arm tapped");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, top: 71),
                      child: Container(
                        width: 50,
                        height: 84,
                        color: Colors.deepOrange,
                      ),
                    ),
                  )
                ]),
              ),
              Center(
                child: Stack(children: [
                  Image.asset(
                    "assets/arms_and_pelvis.png",
                  ),
                  GestureDetector(
                    onTap: () {
                      print("arm tapped");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 0),
                      child: Container(
                        width: 50,
                        height: 120,
                        color: Colors.brown,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("abs tapped");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 95.0, bottom: 40),
                      child: Container(
                        width: 98,
                        height: 60,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("quads tapped");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const QuadScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 72.0, top: 100),
                      child: Container(
                        width: 142,
                        height: 74,
                        color: Colors.red,
                      ),
                    ),
                  )
                ]),
              ),
              Center(
                child: Stack(children: [
                  Image.asset(
                    "assets/quads_knees_calves_and_feet.png",
                  ),
                  GestureDetector(
                    onTap: () {
                      print("quads tapped");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const QuadScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 26.0),
                      child: Container(
                        width: 145,
                        height: 85,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("knee tapped");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const KneeScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 36.0, top: 86),
                      child: Container(
                        width: 125,
                        height: 58,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("calves or tibia tapped");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const KneeScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 36.0, top: 145),
                      child: Container(
                        width: 125,
                        height: 100,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("foot tapped");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const KneeScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 36.0, top: 246),
                      child: Container(
                        width: 125,
                        height: 60,
                        color: Colors.deepPurple,
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
