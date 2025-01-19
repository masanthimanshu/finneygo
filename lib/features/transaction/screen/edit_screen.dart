import 'package:finneygo/style/text_style.dart';
import 'package:finneygo/style/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditTransactionScreen extends StatelessWidget {
  const EditTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Transaction")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(children: [
          Image.asset("assets/images/reading.png"),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Text("12 Nov 2024", style: CustomTextStyle.smallGreyBoldText.style),
            SizedBox(width: 10),
            Icon(
              size: 20,
              FontAwesomeIcons.calendarDays,
              color: ThemeColors.mediumGrey.color,
            ),
          ]),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Text("Category", style: CustomTextStyle.mediumBoldGreyText.style),
              Spacer(),
              Text("Expense"),
            ]),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Text(
                "Sub-category",
                style: CustomTextStyle.mediumBoldGreyText.style,
              ),
              Spacer(),
              Text("Shopping"),
            ]),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Text("Amount", style: CustomTextStyle.mediumBoldGreyText.style),
              Spacer(),
              Text("1200 ( ₹ )"),
            ]),
          ),
          SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Icon(
              FontAwesomeIcons.solidLightbulb,
              color: ThemeColors.mediumGrey.color,
            ),
            SizedBox(width: 10),
            Text(
              "Myntra shopping 1200",
              style: CustomTextStyle.mediumGreyText.style,
            ),
          ]),
          Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text("Update")),
          ),
          SizedBox(height: 30),
        ]),
      ),
    );
  }
}
