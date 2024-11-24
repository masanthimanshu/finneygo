import 'package:finneygo/repository/auth_repository.dart';
import 'package:finneygo/utils/show_toast.dart';
import 'package:finneygo/utils/validators.dart';
import 'package:finneygo/view/auth/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthController {
  const AuthController({required this.context});

  final BuildContext context;

  Future<void> phoneController({
    required String code,
    required String phone,
  }) async {
    if (phone.isEmpty) {
      showToast(
        title: "Enter Phone Number",
        subTitle: "Enter your phone number to continue",
      );
    } else if (validatePhone(phone)) {
      final res = await AuthRepository().sendOtp(
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

  Future<void> otpController({
    required String otp,
    required String verId,
  }) async {
    if (otp.isEmpty) {
      showToast(title: "Enter OTP", subTitle: "Enter your OTP to continue");
    } else if (validateOtp(otp)) {
      final res = await AuthRepository().verifyOtp(
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
      showToast(title: "Invalid OTP", subTitle: "Please enter a valid OTP");
    }
  }

  void logout() {
    final hive = Hive.box("myBox");

    hive.delete("authToken");
    hive.delete("refreshToken");

    Navigator.pushNamedAndRemoveUntil(context, "/auth", (_) => false);
  }
}
