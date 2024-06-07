import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../PhoneNumberProvider.dart';

class PhoneForm extends StatelessWidget {
  const PhoneForm({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneNumberProvider = Provider.of<PhoneNumberProvider>(
        context, listen: false);
    final controller = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(), // Add a back button in the AppBar
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(children: [
              const SizedBox(height: 300),
          const Text(
            'My number is',
            style: TextStyle(
              fontSize: 40, // Set the font size to 24
              fontWeight: FontWeight.bold, // Set the font weight to bold
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width, // Provide a finite width
            child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.yellow[700] ?? Colors.yellow,
                      width: 4,
                    ),
                  ),
                ),
                child: Row(children: [
                  Text(
                    '+33',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(fontSize: 32),
                      keyboardType: TextInputType.number,
                      maxLength: 9,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ])),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                phoneNumberProvider.setPhoneNumber(controller.text);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.grey),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                minimumSize:
                WidgetStateProperty.all(const Size(double.infinity, 50)),
              ),
              child: Text('CONTINUE'),
        ),
        RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                text: 'By taping Log In, you agree with our ',
                children: <TextSpan>[
                  TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                          decoration: TextDecoration.underline)),
                  TextSpan(text: ' and '),
                  TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                          decoration: TextDecoration.underline)),
                ])),
        ]),)
    ,
    );
  }
}