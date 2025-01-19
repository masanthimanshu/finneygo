import 'package:finneygo/style/text_style.dart';
import 'package:finneygo/style/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardTooltip extends StatelessWidget {
  const CardTooltip({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          FontAwesomeIcons.solidLightbulb,
          color: ThemeColors.mediumGrey.color,
        ),
        SizedBox(width: 10),
        Text(
          "Click on the card to edit",
          style: CustomTextStyle.extraSmallGreyText.style,
        ),
        SizedBox(width: 10),
        Icon(
          FontAwesomeIcons.squareArrowUpRight,
          color: ThemeColors.mediumGrey.color,
        ),
      ]),
    );
  }
}
