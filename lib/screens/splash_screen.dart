import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:human_body_doctor/components/app_button.dart';
import 'package:human_body_doctor/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                          "Sign up",
                          style: TextStyle(color: Colors.blue),
                        ),
                        color: Colors.yellow,
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomeScreen()),
                            ))),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: AppButton(
                        buttonText: const Text(
                          "Sign in",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        color: Colors.green,
                        onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomeScreen()),
                            )),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
