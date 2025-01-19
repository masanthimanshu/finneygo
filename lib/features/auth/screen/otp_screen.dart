import 'package:finneygo/features/auth/component/auth_wrapper.dart';
import 'package:finneygo/features/auth/repository/auth_repository.dart';
import 'package:finneygo/style/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    super.key,
    required this.code,
    required this.verId,
    required this.phone,
  });

  final String code;
  final String verId;
  final String phone;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String _otp = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthWrapper(
        subHeading: "Enter OTP sent to your phone "
            "\n${widget.code} - ${widget.phone} -",
        inputField: PinCodeTextField(
          length: 6,
          autoFocus: true,
          appContext: context,
          onChanged: (text) => _otp = text,
          keyboardType: TextInputType.number,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            inactiveColor: ThemeColors.grey.color,
            borderRadius: BorderRadius.circular(10),
            activeColor: ThemeColors.themeColor.color,
            selectedColor: ThemeColors.themeColor.color,
            fieldWidth: MediaQuery.of(context).size.width / 9,
          ),
          onCompleted: (e) {
            AuthRepository().otp(context, verId: widget.verId, otp: _otp);
          },
        ),
        nextButton: () {
          AuthRepository().otp(context, verId: widget.verId, otp: _otp);
        },
      ),
    );
  }
}
