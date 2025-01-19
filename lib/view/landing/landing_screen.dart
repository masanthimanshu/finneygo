import 'package:finneygo/style/theme_colors.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Image.asset("assets/screens/landing_screen.png", fit: BoxFit.cover),
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, "/auth"),
          child: Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ThemeColors.themeColor.color,
            ),
            child: Icon(Icons.arrow_forward, color: Colors.white, size: 50),
          ),
        ),
      ]),
    );
  }
}
