import 'package:flutter/material.dart';
import 'package:human_body_doctor/components/app_button.dart';

class AbsScreen extends StatelessWidget {
  const AbsScreen({super.key});

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
              child: Image.asset("assets/abs_pain.png")),
          const SizedBox(height: 25),
          const Text(
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
              decoration: const InputDecoration(border: InputBorder.none),
              minLines: 3,
              maxLines: 10,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            "These are solutions for the most frequent abdominal problems suffered by our users",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          AppButton(
              buttonText: const Text("Back"),
              onPressed: () => Navigator.pop(context))
        ],
      ),
    )));
  }
}

final textController = TextEditingController();
