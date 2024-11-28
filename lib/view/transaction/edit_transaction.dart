import 'package:flutter/material.dart';

class EditTransaction extends StatelessWidget {
  const EditTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Transaction")),
      body: Column(children: [
        Image.asset("assets/images/reading.png"),
      ]),
    );
  }
}
