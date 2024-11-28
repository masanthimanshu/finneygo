import 'package:finneygo/components/transaction/card_tooltip.dart';
import 'package:finneygo/components/transaction/transaction_card.dart';
import 'package:finneygo/controller/transaction_controller.dart';
import 'package:finneygo/view/transaction/edit_transaction.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final _controller = TextEditingController();

  String _input = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Transaction")),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemCount: 25,
            padding: EdgeInsets.all(20),
            itemBuilder: (e, index) => GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => EditTransaction()),
              ),
              child: TransactionCard(num: index % 8),
            ),
          ),
        ),
        SizedBox(height: 15),
        CardTooltip(),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(width: 2, color: Colors.black.withOpacity(0.5)),
          ),
          child: Row(children: [
            Icon(
              size: 40,
              FontAwesomeIcons.circleArrowRight,
              color: Colors.black.withOpacity(0.25),
            ),
            SizedBox(width: 15),
            Expanded(
              child: TextField(
                controller: _controller,
                onSubmitted: (text) {
                  TransactionController().addTransaction({"input": text});
                  _controller.clear();
                },
                onChanged: (text) => _input = text,
                style: GoogleFonts.notoSans(fontSize: 20),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Lunch from zomato 350",
                  hintStyle: GoogleFonts.notoSans(fontSize: 20),
                ),
              ),
            ),
            SizedBox(width: 15),
            IconButton(
              onPressed: () {
                TransactionController().addTransaction({"input": _input});
                _controller.clear();
              },
              padding: EdgeInsets.zero,
              icon: Icon(
                size: 40,
                FontAwesomeIcons.solidCircleCheck,
                color: Color(0xffFF5678).withOpacity(0.5),
              ),
            ),
          ]),
        ),
        SizedBox(height: 20),
      ]),
    );
  }
}
