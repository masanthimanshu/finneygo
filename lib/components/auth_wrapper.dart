import 'package:finneygo/style/text_style.dart';
import 'package:flutter/material.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({
    super.key,
    required this.subHeading,
    required this.inputField,
    required this.nextButton,
  });

  final String subHeading;
  final Widget inputField;
  final VoidCallback nextButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Image.asset(
          "assets/screens/auth_screen.png",
          fit: BoxFit.cover,
        ),
        Container(
          height: 500,
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 5,
                color: Colors.black.withOpacity(0.25),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/logo.png", width: double.infinity),
              Text("Welcome User,", style: CustomTextStyle.heading.style),
              SizedBox(height: 5),
              Text(subHeading, style: CustomTextStyle.subHeading.style),
              SizedBox(height: 30),
              inputField,
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: nextButton,
                  child: Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
