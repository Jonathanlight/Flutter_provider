import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

class FormBloc extends ChangeNotifier {
  
  String _value = '';
  String _label_username = 'Enter your username';
  String _response = '';
  Color _colorValided = Colors.red;

  String get content => _value;
  String get label_username => _label_username;
  String get response => _response;
  Color get colorValided => _colorValided;

  set content(String val) {
    _value = val;
    notifyListeners();
  }

  validated(val){
    if(val.length <= 3) {
      _response = "Username est trop faible";  
      _colorValided = Colors.red;
    }else{
      _response = "Username est bon";
      _colorValided = Colors.green;
    }
    
    notifyListeners();
  }
}