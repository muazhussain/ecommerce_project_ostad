import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
              CircularProgressIndicator(),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Text('Version 1.0'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
