import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/app_colors.dart';
import '../screens/email_verification_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
    ).then(
      (value) => Get.off(
        () => const EmailVerificationScreen(),
        transition: Transition.downToUp,
        duration: const Duration(
          seconds: 1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 120,
              ),
            ),
          ),
          const Column(
            children: [
              CircularProgressIndicator(
                color: primaryColor,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Version 1.0',
                style: TextStyle(
                  color: greyColor,
                  fontSize: 12,
                  letterSpacing: 0.6,
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
