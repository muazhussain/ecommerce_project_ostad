import 'package:ecommerce_project_ostad/ui/screens/email_verification_screen.dart';
import 'package:ecommerce_project_ostad/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utils/styles.dart';
import '../widgets/app_elevated_button_widget.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
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
              'Enter OTP Code',
              style: titleTextStyle,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'A 4 digit OTP code has been sent',
              style: subtitleTextStyle,
            ),
            const SizedBox(
              height: 24,
            ),
            PinCodeTextField(
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeColor: primaryColor,
                inactiveColor: primaryColor,
                selectedColor: Colors.greenAccent,
              ),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              keyboardType: TextInputType.number,
              animationDuration: const Duration(milliseconds: 300),
              controller: TextEditingController(),
              onChanged: (value) {},
              onCompleted: (value) {},
              appContext: context,
            ),
            const SizedBox(
              height: 16,
            ),
            AppElevatedButtonWidget(
              buttonText: 'Next',
              onTap: () {
                Get.off(
                  () => const EmailVerificationScreen(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  color: greyColor,
                  fontSize: 13,
                ),
                text: 'This code will be expire in ',
                children: [
                  TextSpan(
                    text: '120s',
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Resend code',
                style: TextStyle(
                  color: greyColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
