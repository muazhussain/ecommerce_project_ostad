import '../widgets/app_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import '../utils/styles.dart';
import '../widgets/app_text_form_field_widget.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
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
            const SizedBox(
              height: 24,
            ),
            AppTextFormFieldWidget(
              controller: TextEditingController(),
              validator: (String? value) {},
              keyboardType: TextInputType.emailAddress,
              hintText: 'Email Address',
            ),
            const SizedBox(
              height: 16,
            ),
            AppElevatedButtonWidget(
              buttonText: 'Next',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
