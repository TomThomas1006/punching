import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Mac Address)] action in Login widget.
  ApiCallResponse? macAddress;
  // Stores action output result for [Backend Call - API (HostName)] action in Login widget.
  ApiCallResponse? hostName;
  // Stores action output result for [Backend Call - API (Os Install Date)] action in Login widget.
  ApiCallResponse? osInstalldate;
  // Stores action output result for [Backend Call - API (IpAddress)] action in Login widget.
  ApiCallResponse? ipAddress;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameController;
  final usernameMask = MaskTextInputFormatter(mask: '######');
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // Stores action output result for [Custom Action - encryption] action in password widget.
  String? passworddec;
  // Stores action output result for [Custom Action - basehex] action in password widget.
  String? basehex;
  // Stores action output result for [Backend Call - API (PasswordCheck)] action in password widget.
  ApiCallResponse? passwordCheckcopy;
  // Stores action output result for [Backend Call - API (TokenGeneration)] action in password widget.
  ApiCallResponse? tokenGenerationCopy;
  // Stores action output result for [Backend Call - API (EmployeeName)] action in password widget.
  ApiCallResponse? employeeNameCopy;
  // Stores action output result for [Backend Call - API (BranchDetails)] action in password widget.
  ApiCallResponse? branchDetailsCopy;
  // Stores action output result for [Custom Action - encodeBase64] action in password widget.
  String? encodebase64;
  // Stores action output result for [Custom Action - encryption] action in Button widget.
  String? passwordenc;
  // Stores action output result for [Custom Action - basehex] action in Button widget.
  String? hex;
  // Stores action output result for [Backend Call - API (PasswordCheck)] action in Button widget.
  ApiCallResponse? passwordCheck;
  // Stores action output result for [Backend Call - API (TokenGeneration)] action in Button widget.
  ApiCallResponse? tokenGeneration;
  // Stores action output result for [Backend Call - API (EmployeeName)] action in Button widget.
  ApiCallResponse? employeeName;
  // Stores action output result for [Backend Call - API (BranchDetails)] action in Button widget.
  ApiCallResponse? branchDetails;
  // Stores action output result for [Custom Action - encodeBase64] action in Button widget.
  String? base64;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    usernameFocusNode?.dispose();
    usernameController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
