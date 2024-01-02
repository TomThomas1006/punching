import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

List<String>? split(String? input) {
  var string = input.toString();
  final splitted = string.split('|');
  List<String> asd = splitted;
  // FFAppState().branchdec = asd;
  return asd;
}

List<String>? splitCopy(String? input) {
  var string = input.toString();
  final splitted = string.split('');
  List<String> asd = splitted;
  // FFAppState().branchdec = asd;
  return asd;
}
