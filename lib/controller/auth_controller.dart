import 'package:finneygo/network/endpoints.dart';
import 'package:finneygo/network/requests.dart';
import 'package:finneygo/utils/show_toast.dart';
import 'package:finneygo/utils/validators.dart';
import 'package:finneygo/view/auth/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:toastification/toastification.dart';

class AuthController with HTTPRequests {
  AuthController(this.context);

  final BuildContext context;
  final _hive = Hive.box("myBox");

  Future<String?> _sendOtp(Map<String, dynamic> data) async {
    final res = await postRequest(
      url: apiEndpoint(ApiEndpoints.sendOtp),
      payload: data,
    );

    if (res != null) return res["verId"];
    return null;
  }

  Future<String?> _verifyOtp(Map<String, dynamic> data) async {
    final res = await postRequest(
      url: apiEndpoint(ApiEndpoints.verifyOtp),
      payload: data,
    );

    if (res != null) {
      _hive.put("authToken", res["authToken"]);
      _hive.put("refreshToken", res["refreshToken"]);
      return res["type"];
    }

    return null;
  }

  Future<void> phoneController({
    required String code,
    required String phone,
  }) async {
    if (phone.isEmpty) {
      showToast(
        title: "Enter Phone Number",
        type: ToastificationType.warning,
        subTitle: "Enter your phone number to continue",
      );
    } else if (validatePhone(phone)) {
      final res = await _sendOtp({"code": code, "phone": int.parse(phone)});

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
          type: ToastificationType.warning,
          subTitle: "Error occurred OTP to your device",
        );
      }
    } else {
      showToast(
        title: "Invalid Phone Number",
        type: ToastificationType.warning,
        subTitle: "Please enter a valid phone number",
      );
    }
  }

  Future<void> otpController({
    required String otp,
    required String verId,
  }) async {
    if (otp.isEmpty) {
      showToast(
        title: "Enter OTP",
        type: ToastificationType.warning,
        subTitle: "Enter your OTP to continue",
      );
    } else if (validateOtp(otp)) {
      final res = await _verifyOtp({"verId": verId, "otp": int.parse(otp)});

      if (!context.mounted) return;

      if (res != null) {
        Navigator.pushNamedAndRemoveUntil(context, "/home", (_) => false);
      } else {
        showToast(
          title: "Could not verify OTP",
          type: ToastificationType.warning,
          subTitle: "Error occurred verifying you OTP.",
        );
      }
    } else {
      showToast(
        title: "Invalid OTP",
        type: ToastificationType.warning,
        subTitle: "Please enter a valid OTP",
      );
    }
  }

  void logout() {
    _hive.delete("authToken");
    _hive.delete("refreshToken");

    Navigator.pushNamedAndRemoveUntil(context, "/auth", (_) => false);
  }
}
