import 'package:flutter/material.dart';

//custom text fields accepts controller as input and hint text aslo make password controller obscure
class CustomField extends StatelessWidget {
  const CustomField(
      {super.key,
      required this.hintt,
      required this.controller,
      this.isPassword = false});
  final String hintt;
  final TextEditingController controller;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintt,
      ),
      controller: controller,
      obscureText: isPassword,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return '$hintt is required.';
        }
        return null;
      },
    );
  }
}
