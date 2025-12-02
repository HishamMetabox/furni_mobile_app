import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 480,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFF122f3b),
                  Color(0xFF1E485B),
                  Color(0xFF409AC1),
                ],
                stops: [0.0, 0.23, 0.88],
              ),
            ),
          ),
          Image.asset('assets/images/furni_logo.svg'),
        ],
      ),
    );
  }
}
