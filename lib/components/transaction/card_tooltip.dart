import 'package:finneygo/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardTooltip extends StatelessWidget {
  const CardTooltip({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(
        FontAwesomeIcons.solidLightbulb,
        color: Colors.black.withOpacity(0.25),
      ),
      SizedBox(width: 10),
      Text(
        "Click on the card to edit",
        style: CustomTextStyle.greyLargeText.style,
      ),
      SizedBox(width: 10),
      Icon(
        FontAwesomeIcons.squareArrowUpRight,
        color: Colors.black.withOpacity(0.25),
      ),
    ]);
  }
}
