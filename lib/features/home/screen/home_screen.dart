import 'package:finneygo/features/home/component/feature_card.dart';
import 'package:finneygo/features/home/component/folder_card.dart';
import 'package:finneygo/features/home/component/home_app_bar.dart';
import 'package:finneygo/style/text_style.dart';
import 'package:finneygo/style/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          children: [
            HomeAppBar(),
            SizedBox(height: 80),
            Row(children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ThemeColors.mediumThemeColor.color,
                ),
                child: Icon(
                  Icons.currency_rupee,
                  color: Colors.white,
                  size: 45,
                ),
              ),
              SizedBox(width: 15),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Net Balance",
                  style: CustomTextStyle.mediumBoldGreyText.style,
                ),
                Text(
                  "10,000.00",
                  style: CustomTextStyle.extraLargeBoldText.style,
                ),
              ]),
              Spacer(),
              Icon(
                size: 60,
                color: ThemeColors.lightGrey.color,
                FontAwesomeIcons.squareArrowUpRight,
              ),
            ]),
            SizedBox(height: 80),
            Text(
              "Here are some of the things you can do",
              style: CustomTextStyle.smallGreyBoldText.style,
            ),
            SizedBox(height: 25),
            GridView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemBuilder: (e, index) => FeatureCard(num: index),
            ),
            SizedBox(height: 80),
            Row(children: [
              Text(
                "Transactions",
                style: CustomTextStyle.smallGreyBoldText.style,
              ),
              SizedBox(width: 15),
              Icon(
                FontAwesomeIcons.squareArrowUpRight,
                color: ThemeColors.mediumGrey.color,
              ),
            ]),
            SizedBox(height: 25),
            GridView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemBuilder: (e, index) => const FolderCard(),
            ),
          ],
        ),
      ),
    );
  }
}
