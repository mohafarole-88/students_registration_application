import 'package:flutter/material.dart';

class RegistrationFormFields extends StatelessWidget {
  final TextInputType keyboardType;
  final String hintText;
  final Icon prefixIcon;

  const RegistrationFormFields({
    required this.keyboardType,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45),
      child: TextFormField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
