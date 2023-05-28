import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppTextFormFieldWidget extends StatelessWidget {
  const AppTextFormFieldWidget({
    super.key,
    required this.controller,
    required this.validator,
    required this.hintText,
    this.keyboardType,
  });

  final TextEditingController controller;
  final Function(String?) validator;
  final String hintText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) => validator(value),
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: greyColor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
            width: 2,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
