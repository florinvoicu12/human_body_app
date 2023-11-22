import 'package:flutter/material.dart';

class ChestScreen extends StatefulWidget {
  const ChestScreen({super.key});

  @override
  State<ChestScreen> createState() => _ChestScreenState();
}

final textController = TextEditingController();

class _ChestScreenState extends State<ChestScreen> {
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
              child: Image.asset("assets/chest_pain.png")),
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
            "These are solutions for the most frequent head injuries suffered by our users",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          AppButton(
              buttonText: Text("Back"), onPressed: () => Navigator.pop(context))
        ],
      ),
    )));
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.buttonText,
    this.height,
    this.color,
    this.onPressed,
  });
  final Widget? buttonText;
  final double? height;
  final Color? color;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height ?? MediaQuery.of(context).size.height / 16,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50 / 2)),
          backgroundColor: color ?? Colors.blue,
        ),
        child: buttonText,
      ),
    );
  }
}
