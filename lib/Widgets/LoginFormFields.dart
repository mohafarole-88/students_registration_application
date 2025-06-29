import 'package:flutter/material.dart';

class LoginFormFields extends StatelessWidget {
  final Icon icon;
  final String labelText;
  final bool obsecureText;
  final TextEditingController controller;

  const LoginFormFields({
    super.key,
    required this.icon,
    required this.labelText,
    required this.obsecureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      obscureText: obsecureText,
      controller: controller,
      decoration: InputDecoration(
        icon: icon,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
