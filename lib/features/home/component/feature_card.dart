import 'package:finneygo/data/home_features_data.dart';
import 'package:finneygo/style/text_style.dart';
import 'package:finneygo/style/theme_colors.dart';
import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard({super.key, required this.num});

  final int num;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, homeFeaturesData[num].url),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardColors[num * 2].withOpacity(0.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(homeFeaturesData[num].icon, size: 35),
            SizedBox(height: 20),
            Text(
              homeFeaturesData[num].heading,
              style: CustomTextStyle.smallBoldText.style,
            ),
            SizedBox(height: 5),
            Text(
              homeFeaturesData[num].subHeading,
              style: CustomTextStyle.extraSmallText.style,
            ),
          ],
        ),
      ),
    );
  }
}
