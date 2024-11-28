import 'package:finneygo/data/transaction_colors.dart';
import 'package:finneygo/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.num});

  final int num;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: transactionColors[num].withOpacity(0.5),
        boxShadow: [
          BoxShadow(offset: Offset(-5, 5), color: transactionColors[num]),
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
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xffFF5678), width: 3),
                ),
                child: Icon(
                  size: 20,
                  FontAwesomeIcons.cartShopping,
                  color: Color(0xffFF5678).withOpacity(0.5),
                ),
              ),
              SizedBox(width: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Expense",
                  style: GoogleFonts.notoSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ),
                Text("Shopping", style: CustomTextStyle.mediumText.style),
              ]),
              Spacer(),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  "₹ 1200",
                  style: GoogleFonts.notoSans(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ),
                Text(
                  "12 Oct 2024",
                  style: CustomTextStyle.greyMediumText.style,
                ),
              ]),
            ]),
            Spacer(),
            Row(children: [
              Icon(
                size: 18,
                FontAwesomeIcons.circleArrowRight,
                color: Colors.black.withOpacity(0.1),
              ),
              SizedBox(width: 10),
              Text(
                "Myntra shopping 1200",
                style: CustomTextStyle.greyMediumText.style,
              ),
            ]),
          ]),
        ),
      ]),
    );
  }
}
