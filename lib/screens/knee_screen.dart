import 'package:flutter/material.dart';

class KneeScreen extends StatefulWidget {
  const KneeScreen({super.key});

  @override
  State<KneeScreen> createState() => _KneeScreenState();
}

final textController = TextEditingController();

class _KneeScreenState extends State<KneeScreen> {
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
              child: Image.asset("assets/doctor_phone.png")),
          const SizedBox(height: 25),
          Text(
            "Please explain the problem you are having with your knees",
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
            "These are the most frequent knee problems encountered by our users",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          )
        ],
      ),
    )));
  }
}
