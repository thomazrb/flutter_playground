import 'package:flutter/material.dart';
import 'package:flutter_playground/exercicios/tinder_mockup/components/tinder_button.dart';

class MockupTinder extends StatelessWidget {
  const MockupTinder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
            Color(0xffe94976),
            Color(0xffed7462),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 240),
                Image.asset(
                  'assets/images/logo_tinder.png',
                  width: 220,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text:
                                'By tapping Create Account or Sign In, you agree to our '),
                        TextSpan(
                          text: 'Terms',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                            text: '. Learn how we process your data in our '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Cookies Policy',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(text: '.')
                      ],
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const TinderButton(
                  image: 'assets/images/apple_logo.png',
                  text: 'SIGN IN WITH APPLE',
                ),
                const SizedBox(height: 10),
                const TinderButton(
                  image: 'assets/images/facebook_logo.png',
                  text: 'SIGN IN WITH FACEBOOK',
                ),
                const SizedBox(height: 10),
                const TinderButton(
                  image: 'assets/images/ballon.png',
                  text: 'SIGN IN WITH PHONE NUMBER',
                ),
                const SizedBox(height: 30),
                const Text(
                  'Trouble Signing In?',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
