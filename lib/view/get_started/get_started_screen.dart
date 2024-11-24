import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Image.asset(
          "assets/screens/get_started.png",
          fit: BoxFit.cover,
        ),
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, "/auth"),
          child: Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffFF5678),
            ),
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 50,
            ),
          ),
        ),
      ]),
    );
  }
}
