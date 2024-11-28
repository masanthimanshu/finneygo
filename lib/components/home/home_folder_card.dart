import 'package:finneygo/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeFolderCard extends StatelessWidget {
  const HomeFolderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Icon(
        FontAwesomeIcons.solidFolder,
        color: Color(0xffFF5678).withOpacity(0.5),
        size: MediaQuery.of(context).size.width / 2.25,
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 25, right: 15),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Icon(
            size: 30,
            FontAwesomeIcons.circleArrowUp,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
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
          Text(
            "Investment",
            style: CustomTextStyle.whiteBoldMediumText.style,
          ),
          Text("Mutual Fund", style: CustomTextStyle.greyMediumText.style),
        ]),
      ),
    ]);
  }
}
