import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  final textFieldMask1 = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  final textFieldMask2 = MaskTextInputFormatter(mask: '##########');
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (Send OTP)] action in Button widget.
  ApiCallResponse? sendOTP;
  // State field(s) for Timer widget.
  int timerMilliseconds = 900000;
  String timerValue = StopWatchTimer.getDisplayTime(
    900000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for otptextfield widget.
  FocusNode? otptextfieldFocusNode;
  TextEditingController? otptextfieldController;
  String? Function(BuildContext, String?)? otptextfieldControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  final textFieldMask3 = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? textController4Validator;
  DateTime? datePicked1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController5;
  final textFieldMask4 = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? textController5Validator;
  DateTime? datePicked2;
  // State field(s) for newpassword widget.
  FocusNode? newpasswordFocusNode;
  TextEditingController? newpasswordController;
  late bool newpasswordVisibility;
  String? Function(BuildContext, String?)? newpasswordControllerValidator;
  // State field(s) for confirmpassword widget.
  FocusNode? confirmpasswordFocusNode;
  TextEditingController? confirmpasswordController;
  late bool confirmpasswordVisibility;
  String? Function(BuildContext, String?)? confirmpasswordControllerValidator;
  // Stores action output result for [Backend Call - API (VerifyOTP)] action in Button widget.
  ApiCallResponse? verifyOtp;
  // Stores action output result for [Custom Action - dateform] action in Button widget.
  String? dob;
  // Stores action output result for [Custom Action - dateform] action in Button widget.
  String? doj;
  // Stores action output result for [Backend Call - API (Reset Password)] action in Button widget.
  ApiCallResponse? resetPassword;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    newpasswordVisibility = false;
    confirmpasswordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    timerController.dispose();
    otptextfieldFocusNode?.dispose();
    otptextfieldController?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    textFieldFocusNode4?.dispose();
    textController5?.dispose();

    newpasswordFocusNode?.dispose();
    newpasswordController?.dispose();

    confirmpasswordFocusNode?.dispose();
    confirmpasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
