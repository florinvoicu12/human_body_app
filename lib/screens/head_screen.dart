import 'package:flutter/material.dart';

class HeadScreen extends StatefulWidget {
  const HeadScreen({super.key});

  @override
  State<HeadScreen> createState() => _HeadScreenState();
}

final textController = TextEditingController();

class _HeadScreenState extends State<HeadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 3.5,
              child: Image.asset("assets/head_injuries.png")),
          const SizedBox(height: 25),
          Text(
            "Please explain the problem you are having",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withAlpha(30),
                borderRadius: BorderRadius.circular(12)),
            child: TextField(
              cursorColor: Colors.black,
              controller: textController,
              decoration: InputDecoration(border: InputBorder.none),
              minLines: 3,
              maxLines: 10,
            ),
          ),
          const SizedBox(height: 25),
          Text(
            "These are solutions for the most frequent head injuries suffered by our users",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )
        ],
      ),
    )));
  }
}
