import 'package:flutter/material.dart';
import '../screens/mail_form.dart';
import '../screens/phone_form.dart';

ElevatedButton createButton(Color backgroundColor, Color foregroundColor, IconData icon, String text, BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      if (text == 'LOGIN WITH MAIL ADDRESS') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MailForm()),
        );
      }
      if (text == 'LOGIN WITH PHONE NUMBER') {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PhoneForm()),
        );
      }
    },
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(backgroundColor),
      foregroundColor: WidgetStateProperty.all(foregroundColor),
      minimumSize: WidgetStateProperty.all(const Size(double.infinity, 50)),
    ),
    child: Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10),
        Expanded(
          child: Center(
            child: Text(text),
          ),
        ),
        const SizedBox(width: 20),
      ],
    ),
  );
}