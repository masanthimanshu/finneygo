import 'package:finneygo/style/text_style.dart';
import 'package:finneygo/style/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FolderCard extends StatelessWidget {
  const FolderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Icon(
        FontAwesomeIcons.solidFolder,
        color: ThemeColors.mediumThemeColor.color,
        size: MediaQuery.of(context).size.width / 2.25,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(FontAwesomeIcons.seedling),
          ),
          Spacer(),
          Row(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Investment",
                style: CustomTextStyle.whiteSmallBoldText.style,
              ),
              Text(
                "Mutual Fund",
                style: CustomTextStyle.extraSmallGreyText.style,
              ),
            ]),
            Spacer(),
            Icon(
              size: 35,
              FontAwesomeIcons.circleArrowUp,
              color: Colors.white.withOpacity(0.5),
            ),
          ]),
        ]),
      ),
    ]);
  }
}
