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
      body: SafeArea(
        child: Stack(children: [
          Center(
            child: Column(
              children: [
                Image.asset("assets/head1.png"),
                Image.asset("assets/neck.png"),
                Image.asset("assets/shoulders_and_chest.png"),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
