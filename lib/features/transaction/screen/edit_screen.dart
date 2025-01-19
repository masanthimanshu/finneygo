import 'package:flutter/material.dart';

class EditTransactionScreen extends StatelessWidget {
  const EditTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Transaction")),
      body: ListView(padding: EdgeInsets.all(25), children: [
        Image.asset("assets/images/reading.png"),
        Container(
          decoration: BoxDecoration(),
          child: Row(children: [
            Text("Category"),
            Text("Expense"),
          ]),
        ),
      ]),
    );
  }
}
