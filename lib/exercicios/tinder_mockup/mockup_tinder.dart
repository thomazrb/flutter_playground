import 'package:flutter/material.dart';

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
                const SizedBox(height: 20),
                Image.asset(
                  'assets/images/logo_tinder.png',
                  width: 220,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
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
                    ),
                  ),
                ),
                const SizedBox(height: 250),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.apple,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'SIGN IN WITH APPLE',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
