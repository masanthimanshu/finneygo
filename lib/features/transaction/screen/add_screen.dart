import 'package:finneygo/features/transaction/component/card_tooltip.dart';
import 'package:finneygo/features/transaction/component/transaction_card.dart';
import 'package:finneygo/features/transaction/controller/transaction_controller.dart';
import 'package:finneygo/style/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'edit_screen.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  final TextEditingController _controller = TextEditingController();

  String _input = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Transaction")),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemCount: 10,
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (e, index) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => EditTransactionScreen()),
              ),
              child: TransactionCard(num: index),
            ),
          ),
        ),
        CardTooltip(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 2, color: ThemeColors.mediumGrey.color),
          ),
          child: TextField(
            controller: _controller,
            onChanged: (text) => _input = text,
            onSubmitted: (e) {
              TransactionController().addTransaction({"input": _input});
              _controller.clear();
            },
            decoration: InputDecoration(
              prefixIcon: Icon(
                size: 30,
                FontAwesomeIcons.circleArrowRight,
                color: ThemeColors.mediumGrey.color,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  TransactionController().addTransaction({"input": _input});
                  _controller.clear();
                },
                child: Icon(
                  size: 30,
                  FontAwesomeIcons.solidCircleCheck,
                  color: ThemeColors.mediumThemeColor.color,
                ),
              ),
              hintText: "Lunch from zomato 350",
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(height: 25),
      ]),
    );
  }
}
