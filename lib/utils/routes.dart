import 'package:finneygo/root/custom_root.dart';
import 'package:flutter/material.dart';

import '/view/auth/phone_screen.dart';
import '/view/home/home_screen.dart';
import '/view/scan_bill/scan_options.dart';
import '/view/transaction/add_transaction.dart';
import '/view/transaction/edit_transaction.dart';

final Map<String, WidgetBuilder> appRoutes = {
  "/": (e) => const CustomRoot(),
  "/home": (e) => const HomeScreen(),
  "/auth": (e) => const PhoneScreen(),
  "/scan-option": (e) => const ScanOptions(),
  "/add-transaction": (e) => const AddTransaction(),
  "/edit-transaction": (e) => const EditTransaction(),
};
