import 'package:flutter/cupertino.dart';

class UserProvider extends ChangeNotifier {
  String _name = "";
  String _email = "";

  void setName(String value) {
    _name = value;
    notifyListeners();
  }

  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  String getName() => _name;

  String getEmail() => _email;
}
