import 'package:flutter/material.dart';

class MailForm extends StatelessWidget {
  const MailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(), // Add a back button in the AppBar
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              const SizedBox(height: 500),
              const Text(
                'My email is',
                style: TextStyle(
                  fontSize: 40, // Set the font size to 24
                  fontWeight: FontWeight.bold, // Set the font weight to bold
                ),
              ),
              const SizedBox(height: 30),
              Row(children: [
                Text(
                  '+33',
                  style: TextStyle(
                    fontSize: 32,
                    decoration: TextDecoration.underline,
                    // Underline the text
                    decorationColor: Colors.yellow[700],
                    decorationThickness: 2,
                  ),
                ),
              ]),

              /*
          FittedBox(
              child: Container(
            height: 450,
            width: 450,
            child: Image.asset(
              'assets/images/BleuOrange.png',
            ),
          ))
          */
            ],
          ),
        ));
  }
}
