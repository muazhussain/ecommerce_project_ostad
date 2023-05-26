import 'package:ecommerce_project_ostad/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../utils/styles.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 80,
            height: 80,
          ),
          Text(
            'Welcome Back!',
            style: titleTextStyle,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Please enter your email address',
            style: subtitleTextStyle,
          ),
          TextFormField(
            controller: TextEditingController(),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              border: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
