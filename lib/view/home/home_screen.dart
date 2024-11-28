import 'package:finneygo/components/home/home_app_bar.dart';
import 'package:finneygo/components/home/home_feature_card.dart';
import 'package:finneygo/components/home/home_folder_card.dart';
import 'package:finneygo/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  color: Color(0xffFF0000).withOpacity(0.25),
                ),
                child: Icon(
                  Icons.currency_rupee,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Net Balance",
                  style: GoogleFonts.notoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFF0000).withOpacity(0.5),
                  ),
                ),
                Row(children: [
                  Text(
                    "10,000.00",
                    style: CustomTextStyle.extraLargeText.style,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    FontAwesomeIcons.circleArrowDown,
                    color: Color(0xffFF0000).withOpacity(0.25),
                  ),
                ]),
              ]),
              Spacer(),
              Icon(
                size: 60,
                FontAwesomeIcons.squareArrowUpRight,
                color: Colors.black.withOpacity(0.1),
              ),
            ]),
            SizedBox(height: 80),
            Text(
              "Here are some of the things you can do",
              style: CustomTextStyle.greyLargeBoldText.style,
            ),
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
              itemBuilder: (e, index) => HomeFeatureCard(num: index),
            ),
            SizedBox(height: 50),
            Row(children: [
              Text(
                "Transactions",
                style: CustomTextStyle.greyLargeBoldText.style,
              ),
              SizedBox(width: 15),
              Icon(
                FontAwesomeIcons.squareArrowUpRight,
                color: Colors.black.withOpacity(0.25),
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
              itemBuilder: (e, index) => const HomeFolderCard(),
            ),
          ],
        ),
      ),
    );
  }
}
