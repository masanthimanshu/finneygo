import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ProfileRepository {
  final _hive = Hive.box("myBox");

  void logout(BuildContext context) {
    _hive.delete("authToken");
    _hive.delete("refreshToken");

    Navigator.pushNamedAndRemoveUntil(context, "/auth", (_) => false);
  }
}
