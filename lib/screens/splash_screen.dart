import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:human_body_doctor/components/app_button.dart';
import 'package:human_body_doctor/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    return Timer(const Duration(seconds: 3), navigationPage);
  }

  void navigationPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        SvgPicture.asset("assets/splash_bg.svg"),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Spacer(),
                SizedBox(
                    width: double.infinity,
                    child: AppButton(
                        buttonText: const Text(
                          "Get started",
                          style: TextStyle(color: Colors.blue),
                        ),
                        color: Colors.yellow,
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const HomeScreen()),
                            ))),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 20),
                //   child: SizedBox(
                //     width: double.infinity,
                //     child: AppButton(
                //         buttonText: const Text(
                //           "Sign in",
                //           style: TextStyle(color: Colors.yellow),
                //         ),
                //         color: Colors.green,
                //         onPressed: () => Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (BuildContext context) =>
                //                       HomeScreen()),
                //             )),
                //   ),
                // )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
