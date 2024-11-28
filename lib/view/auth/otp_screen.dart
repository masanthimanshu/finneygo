import 'package:finneygo/components/auth/auth_wrapper.dart';
import 'package:finneygo/controller/auth_controller.dart';
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
        subHeading: "Enter OTP sent to your phone \n+91 9876543210 -",
        inputField: PinCodeTextField(
          length: 6,
          autoFocus: true,
          appContext: context,
          pinTheme: _otpFieldStyle,
          onChanged: (text) => _otp = text,
          keyboardType: TextInputType.number,
          onCompleted: (e) => AuthController(context).otpController(
            verId: widget.verId,
            otp: _otp,
          ),
        ),
        nextButton: () => AuthController(context).otpController(
          verId: widget.verId,
          otp: _otp,
        ),
      ),
    );
  }
}

final _otpFieldStyle = PinTheme(
  fieldWidth: 50,
  fieldHeight: 50,
  inactiveColor: Colors.grey,
  shape: PinCodeFieldShape.box,
  activeColor: Color(0xffFF5678),
  selectedColor: Color(0xffFF5678),
  borderRadius: BorderRadius.circular(10),
);
