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
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/user.png"),
            ),
          ),
        ),
      ),
      SizedBox(width: 15),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Greetings 👋",
            style: CustomTextStyle.boldLargeText.style,
          ),
          Text(
            "Manage money with ease",
            style: CustomTextStyle.greyExtraSmallText.style,
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
