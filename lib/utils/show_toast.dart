import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showToast({
  required String title,
  required String subTitle,
  required ToastificationType type,
}) {
  toastification.show(
    type: type,
    showProgressBar: false,
    description: Text(subTitle),
    alignment: Alignment.bottomCenter,
    style: ToastificationStyle.flatColored,
    autoCloseDuration: const Duration(seconds: 5),
    title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
  );
}
