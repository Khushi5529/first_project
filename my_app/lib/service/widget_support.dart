// ignore_for_file: non_constant_identifier_names, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppWidget {
  static TextStyle HeadlineTextFieldStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle SimpleTextFieldStyle() {
    return TextStyle(color: Colors.black, fontSize: 18.0);
  }

static TextStyle WhiteTextFieldStyle() {
    return TextStyle  (
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    );
  }


  static TextStyle BoldTextFieldStyle() {
    return TextStyle(color: Colors.black, fontSize: 20.0,
    fontWeight: FontWeight.bold);
  }

  static TextStyle PriceTextFieldStyle() {
    return TextStyle  (
      color: Colors.black26,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );
  }

}

