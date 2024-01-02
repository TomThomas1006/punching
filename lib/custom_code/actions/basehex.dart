// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

Future<String?> basehex(String text) async {
  // Add your function code here!
  String input = text;
  List<int> charCodes = input.runes.toList();
  String hexString = charCodes.map((code) => code.toRadixString(16)).join('');
  print(hexString);
  print('hello world');
  return hexString;
}
