// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:encrypt/encrypt.dart' as encrypt;

Future<String?> encryption(String text) async {
  //For AES Encryption/Decryption
  final key = encrypt.Key.fromUtf8("8080808080808080");
  final iv = encrypt.IV.fromUtf8("8080808080808080");
  final encrypter =
      encrypt.Encrypter(encrypt.AES(key, mode: encrypt.AESMode.cbc));
  // final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  final encrypted = encrypter.encrypt(text, iv: iv);

  /*print(encrypted.bytes);
    print(encrypted.base16);*/
  print(encrypted.base64);
  return encrypted.base64;
}
