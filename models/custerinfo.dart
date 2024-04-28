import 'package:flutter/material.dart';

class CustomerInfo extends ChangeNotifier {
  String name = '';
  String mobileNumber = '';
  String email = '';

  void updateInfo(String newName, String newMobileNumber, String newEmail) {
    name = newName;
    mobileNumber = newMobileNumber;
    email = newEmail;
    notifyListeners();
  }
}
