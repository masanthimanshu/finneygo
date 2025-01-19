import 'package:finneygo/style/text_style.dart';
import 'package:finneygo/style/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.num});

  final int num;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: cardColors[num % 8].withOpacity(0.5),
        boxShadow: [
          BoxShadow(offset: Offset(-5, 5), color: cardColors[num % 8]),
          BoxShadow(color: Colors.white),
        ],
      ),
      child: Stack(children: [
        Align(
          alignment: Alignment.centerRight,
          child: Image.asset("assets/images/rocket_icon.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Row(children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: cardColors[num % 8], width: 3),
                ),
                child: Icon(
                  FontAwesomeIcons.seedling,
                  color: cardColors[num % 8],
                ),
              ),
              SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Expense",
                  style: CustomTextStyle.mediumBoldGreyText.style,
                ),
                Row(children: [
                  Text("Shopping", style: CustomTextStyle.extraSmallText.style),
                  SizedBox(width: 5),
                  Icon(
                    size: 12,
                    color: ThemeColors.mediumGrey.color,
                    FontAwesomeIcons.squareArrowUpRight,
                  ),
                ]),
              ]),
              Spacer(),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text("₹ 1200", style: CustomTextStyle.largeBoldGreyText.style),
                Text(
                  "12 Oct 2024",
                  style: CustomTextStyle.extraSmallGreyBoldText.style,
                ),
              ]),
            ]),
            Spacer(),
            Row(children: [
              Icon(
                size: 20,
                FontAwesomeIcons.circleArrowRight,
                color: ThemeColors.mediumGrey.color,
              ),
              SizedBox(width: 10),
              Text(
                "Myntra shopping 1200",
                style: CustomTextStyle.smallGreyText.style,
              ),
            ]),
          ]),
        ),
      ]),
    );
  }
}
