import 'package:flutter/material.dart';
import '../components/login_buttons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(height: 40),
        FittedBox(
          child: Container(
            height: 450,
            width: 450,
            child: Image.asset(
              'assets/images/BleuOrange.png',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            const SizedBox(height: 30),
            RichText(
              text: const TextSpan(
                text: 'Welcome to DuoLift !',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            const SizedBox(height: 30),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'By taping Log In, you agree with our ',
                children: <TextSpan>[
                  TextSpan(
                    text: 'Terms of Service',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                  TextSpan(text: ' and '),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            createButton(Colors.red, Colors.white, Icons.mail, 'LOGIN WITH MAIL ADDRESS', context),
            const SizedBox(height: 10),
            createButton(Colors.grey, Colors.white, Icons.phone_android, 'LOGIN WITH PHONE NUMBER', context),
            const SizedBox(height: 10),
            createButton(Colors.green, Colors.white, Icons.mail, 'LOGIN WITH WHATSAPP', context),
            const SizedBox(height: 10),
            createButton(Colors.blue, Colors.white, Icons.facebook, 'LOGIN WITH FACEBOOK', context),
            const SizedBox(height: 10),
            const Text('Trouble Logging In ?'),
          ]),
        ),
      ]),
    );
  }
}