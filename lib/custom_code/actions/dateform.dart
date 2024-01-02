// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> dateform(String value) async {
  // Add your function code here!
  var inputFormat = DateFormat('dd/MM/yyyy');
  var date1 = inputFormat.parse(value);

  var outputFormat = DateFormat('MM-dd-yyyy');
  var date2 = outputFormat.format(date1);
  print(date2);
  return date2;
}
