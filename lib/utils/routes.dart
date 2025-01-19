import 'package:finneygo/navigation/navigation_handler.dart';
import 'package:flutter/material.dart';

import '/features/auth/screen/phone_screen.dart';
import '/features/home/screen/home_screen.dart';
import '/features/notification/screen/notification_screen.dart';
import '/features/profile/screen/profile_screen.dart';
import '/features/transaction/screen/add_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  "/home": (e) => const HomeScreen(),
  "/auth": (e) => const PhoneScreen(),
  "/": (e) => const NavigationHandler(),
  "/profile": (e) => const ProfileScreen(),
  "/notification": (e) => const NotificationScreen(),
  "/add-transaction": (e) => const AddTransactionScreen(),
};
