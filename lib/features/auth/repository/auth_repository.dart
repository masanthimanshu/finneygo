import 'package:finneygo/features/auth/controller/auth_controller.dart';
import 'package:finneygo/features/auth/screen/otp_screen.dart';
import 'package:finneygo/utils/toast.dart';
import 'package:flutter/material.dart';

class AuthRepository {
  bool _validateOtp(String val) => RegExp(r'^\d{6}$').hasMatch(val);

  bool _validatePhone(String val) => RegExp(r'^\d{10}$').hasMatch(val);

  Future<void> phone(
    BuildContext context, {
    required String code,
    required String phone,
  }) async {
    if (phone.isEmpty) {
      showToast(
        title: "Enter Phone Number",
        subTitle: "Enter your phone number to continue",
      );
    } else if (_validatePhone(phone)) {
      final res = await AuthController().sendOtp(
        {"code": code, "phone": int.parse(phone)},
      );

      if (!context.mounted) return;

      if (res != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => OtpScreen(verId: res, code: code, phone: phone),
          ),
        );
      } else {
        showToast(
          title: "Error Sending OTP",
          subTitle: "Error occurred OTP to your device",
        );
      }
    } else {
      showToast(
        title: "Invalid Phone Number",
        subTitle: "Please enter a valid phone number",
      );
    }
  }

  Future<void> otp(
    BuildContext context, {
    required String otp,
    required String verId,
  }) async {
    if (otp.isEmpty) {
      showToast(
        title: "Enter OTP",
        subTitle: "Enter your OTP to continue",
      );
    } else if (_validateOtp(otp)) {
      final res = await AuthController().verifyOtp(
        {"verId": verId, "otp": int.parse(otp)},
      );

      if (!context.mounted) return;

      if (res != null) {
        Navigator.pushNamedAndRemoveUntil(context, "/home", (_) => false);
      } else {
        showToast(
          title: "Could not verify OTP",
          subTitle: "Error occurred verifying you OTP.",
        );
      }
    } else {
      showToast(
        title: "Invalid OTP",
        subTitle: "Please enter a valid OTP",
      );
    }
  }
}
