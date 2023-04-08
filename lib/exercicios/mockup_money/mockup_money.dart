import 'package:flutter/material.dart';
import 'package:flutter_playground/exercicios/mockup_money/components/money_image_button.dart';
import 'package:flutter_playground/exercicios/mockup_money/components/money_logo.dart';
import 'package:flutter_playground/exercicios/mockup_money/components/money_purple_button.dart';

class MockupMoney extends StatelessWidget {
  const MockupMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const SizedBox(height: 60),
          const MoneyLogo(),
          const SizedBox(height: 50),
          const Text(
            'Get your Money Under Control',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 38,
            ),
          ),
          const SizedBox(height: 25),
          const Text(
            'Manage your expenses. Seamlessly.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff656684),
              fontWeight: FontWeight.bold,
              fontSize: 23,
            ),
          ),
          const SizedBox(height: 85),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: MoneyPurpleButton(text: 'Sign Up with Email ID'),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: MoneyImageButton(
                image: 'assets/images/google.png', text: 'Sign Up with Google'),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Already have an account? ',
                style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontSize: 18,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
