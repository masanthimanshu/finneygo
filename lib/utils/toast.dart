import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showToast({required String title, required String subTitle}) {
  toastification.show(
    showProgressBar: false,
    description: Text(subTitle),
    type: ToastificationType.warning,
    alignment: Alignment.bottomCenter,
    style: ToastificationStyle.flatColored,
    autoCloseDuration: const Duration(seconds: 5),
    title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
  );
}
