import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset('assets/onboarding.jpg', fit: BoxFit.contain),
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text('Let us help you')
          )
        ],
      ),
    );
  }
}
