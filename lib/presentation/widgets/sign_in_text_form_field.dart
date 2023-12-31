import 'package:flutter/material.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/debouncer/debouncer.dart';

// ignore: must_be_immutable
class SignInTextFormField extends StatelessWidget {
  SignInTextFormField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.suffix,
    required this.obscureText,
    required this.controller,
    required this.keyboardType,
    required this.formKey,
    this.password,
  });
  final IconData icon;
  final String hintText;
  final Widget? suffix;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final GlobalKey<FormState>? formKey;
  String? password;

  @override
  Widget build(BuildContext context) {
    Debouncer debouncer = Debouncer(milliseconds: 1000);
    return TextFormField(
      onChanged: (value) {
        debouncer.run(() {
          if (formKey != null) {
            formKey?.currentState?.validate();
          }
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please fill $hintText';
        } else if (password != null) {
          if (password != value.trim()) {
            return "Confirm password does not match";
          } else {
            return null;
          }
        } else {
          return null;
        }
      },
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(
          icon,
          color: iconBlackColor,
        ),
        filled: true,
        fillColor: customPrimaryColor[100],
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: suffix,
      ),
    );
  }
}
