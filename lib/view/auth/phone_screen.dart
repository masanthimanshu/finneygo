import 'package:country_code_picker/country_code_picker.dart';
import 'package:finneygo/components/auth/auth_wrapper.dart';
import 'package:finneygo/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  String _phone = "";
  String _code = "+91";

  @override
  Widget build(BuildContext context) {
    return AuthWrapper(
      subHeading: "Enter your phone number to get \nstarted -",
      inputField: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          CountryCodePicker(
            favorite: const ["IN"],
            initialSelection: "IN",
            onChanged: (code) => _code = code.dialCode!,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              inputFormatters: [LengthLimitingTextInputFormatter(10)],
              keyboardType: TextInputType.number,
              onChanged: (text) => _phone = text,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Phone Number",
              ),
            ),
          ),
        ]),
      ),
      nextButton: () => AuthController(context: context).phoneController(
        code: _code,
        phone: _phone,
      ),
    );
  }
}
