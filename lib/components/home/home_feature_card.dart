import 'package:finneygo/data/home_features_data.dart';
import 'package:finneygo/style/text_style.dart';
import 'package:flutter/material.dart';

class HomeFeatureCard extends StatelessWidget {
  const HomeFeatureCard({super.key, required this.num});

  final int num;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, homeFeaturesData[num].url),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: homeFeaturesData[num].cardDolor.withOpacity(0.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(homeFeaturesData[num].icon, size: 35),
            SizedBox(height: 20),
            Text(
              homeFeaturesData[num].heading,
              style: CustomTextStyle.boldLargeText.style,
            ),
            SizedBox(height: 5),
            Text(
              homeFeaturesData[num].subHeading,
              style: CustomTextStyle.mediumText.style,
            ),
          ],
        ),
      ),
    );
  }
}
