import 'package:flutter/foundation.dart';

class PhoneNumberProvider extends ChangeNotifier {
  String _phoneNumber = '';

  String get phoneNumber => _phoneNumber;

  void setPhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }
}