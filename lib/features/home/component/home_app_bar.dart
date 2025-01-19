import 'package:finneygo/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, "/profile"),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/user.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      SizedBox(width: 15),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Greetings 👋", style: CustomTextStyle.mediumBoldText.style),
          Text(
            "Track money with ease",
            style: CustomTextStyle.extraSmallGreyText.style,
          ),
        ],
      ),
      Spacer(),
      IconButton(
        onPressed: () => Navigator.pushNamed(context, "/notification"),
        icon: Icon(FontAwesomeIcons.bell),
      ),
    ]);
  }
}
