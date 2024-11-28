import 'package:finneygo/root/custom_root.dart';
import 'package:flutter/material.dart';

import '/view/auth/phone_screen.dart';
import '/view/home/home_screen.dart';
import '/view/notification/notification_screen.dart';
import '/view/profile/profile_screen.dart';
import '/view/scan_bill/scan_options.dart';
import '/view/transaction/add_transaction.dart';

final Map<String, WidgetBuilder> appRoutes = {
  "/": (e) => const CustomRoot(),
  "/home": (e) => const HomeScreen(),
  "/auth": (e) => const PhoneScreen(),
  "/profile": (e) => const ProfileScreen(),
  "/scan-options": (e) => const ScanOptions(),
  "/add-transaction": (e) => const AddTransaction(),
  "/notification": (e) => const NotificationScreen(),
};
