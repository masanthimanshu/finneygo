import 'package:finneygo/style/text_style.dart';
import 'package:finneygo/style/theme_colors.dart';
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
          width: double.infinity,
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
                color: ThemeColors.mediumGrey.color,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/logo.png", width: double.infinity),
              Text(
                "Welcome User,",
                style: CustomTextStyle.extraLargeBoldText.style,
              ),
              SizedBox(height: 5),
              Text(subHeading, style: CustomTextStyle.smallText.style),
              SizedBox(height: 35),
              inputField,
              SizedBox(height: 35),
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
