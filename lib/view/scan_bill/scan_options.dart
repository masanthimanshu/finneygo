import 'package:flutter/material.dart';

class ScanOptions extends StatelessWidget {
  const ScanOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scan Bill")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          "assets/images/scan_bill.png",
          width: MediaQuery.of(context).size.width / 2,
        ),
        SizedBox(height: 75, width: double.infinity),
        Image.asset(
          "assets/images/upload_bill.png",
          width: MediaQuery.of(context).size.width / 2,
        ),
      ]),
    );
  }
}
