import 'package:ecommerce_project_ostad/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonWidget extends StatelessWidget {
  const AppElevatedButtonWidget(
      {super.key, required this.buttonText, required this.onTap});

  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
        ),
        onPressed: onTap,
        child: Text(
          buttonText,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            letterSpacing: 0.6,
          ),
        ),
      ),
    );
  }
}
