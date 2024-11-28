import 'package:finneygo/controller/auth_controller.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Column(children: [
        Spacer(),
        Container(
          margin: EdgeInsets.all(25),
          width: double.infinity,
          child: ElevatedButton(
            onPressed: AuthController(context: context).logout,
            child: Text("Logout"),
          ),
        ),
      ]),
    );
  }
}