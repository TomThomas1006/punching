// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

void clearDashTextFieldFirst() {
  DashTextFieldFirst._dashTextFieldFirstState?.clearTextFieldValue();
}

class DashTextFieldFirst extends StatefulWidget {
  const DashTextFieldFirst({
    Key? key,
    this.width,
    this.height,
    this.lostFocusAction,
    this.obscureText,
    this.hintText,
    this.labelText,
    this.borderRadius,
    this.borderColor,
    this.borderWidth,
    this.backgroundColor,
    this.isFilled,
    this.textColor,
    this.errorBorderColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function()? lostFocusAction;
  final bool? obscureText;
  final String? hintText;
  final String? labelText;
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final Color? backgroundColor;
  final bool? isFilled;
  final Color? textColor;
  final Color? errorBorderColor;

  @override
  State<DashTextFieldFirst> createState() => DashTextFieldFirstState();
  static DashTextFieldFirstState? _dashTextFieldFirstState;
}

var lname;
void newf() async {
  lname.requestFocus();
}

class DashTextFieldFirstState extends State<DashTextFieldFirst> {
  late TextEditingController _controller;
  //String _textFieldValueF;
  var _textFieldValueF;

  @override
  void initState() {
    super.initState();

    lname = FocusNode();
    lname.addListener(_onFocusChange);
    _controller = TextEditingController();
    DashTextFieldFirst._dashTextFieldFirstState = this;
  }

  @override
  void dispose() {
    lname.removeListener(_onFocusChange);
    lname.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (!lname.hasFocus) {
      if (widget.lostFocusAction != null) {
        widget.lostFocusAction!();
      }
    }
  }

  void clearTextFieldValue() {
    setState(() {
      _controller.clear();
      FFAppState().update(() {
        FFAppState().lostFocusValue = "";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      child: TextFormField(
        autofocus: true,
        keyboardType: TextInputType.number,

        controller: _controller,
        onChanged: (value) {
          setState(() {
            _textFieldValueF = value;
            // add a local state variable here and update it's value from the _textFieldValue
            FFAppState().update(() {
              FFAppState().lostFocusValue = _textFieldValueF!;
              //FFAppState().lostFocusValue = 372050;
            });
          });
        },
        focusNode: lname,
        obscureText: widget.obscureText ?? false,
        decoration: InputDecoration(
          //labelStyle: TextStyle(color: widget.textColor ?? Colors.black),
          hintStyle: TextStyle(color: widget.textColor ?? Colors.black),
          fillColor: widget.backgroundColor ?? Colors.transparent,
          filled: widget.isFilled ?? false,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          //labelText: widget.labelText ?? "Label Text",
          hintText: widget.hintText ?? "Hint Text",
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),

        //borderRadius: BorderRadius.circular(widget.borderRadius ?? 4.0),
      ),
      // errorBorder: OutlineInputBorder(
      // borderSide: BorderSide(
      //  color: widget.errorBorderColor ?? Colors.red,
      //  width: widget.borderWidth ?? 1.0,
      // ),
      // borderRadius: BorderRadius.circular(widget.borderRadius ?? 4.0),
      // ),
    );
  }
}
