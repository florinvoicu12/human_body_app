import 'package:flutter/material.dart';

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
                      print("head tapped");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 10),
                      child: Container(
                        width: 10,
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
                    "assets/arms_and_pelvis.png",
                  ),
                  GestureDetector(
                    onTap: () {
                      print("head tapped");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 10),
                      child: Container(
                        width: 50,
                        height: 120,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("head tapped");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 28.0, bottom: 40),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.transparent,
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
                      print("head tapped");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        width: 10,
                        color: Colors.transparent,
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
