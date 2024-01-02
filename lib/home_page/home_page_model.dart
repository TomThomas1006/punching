import '/backend/api_requests/api_calls.dart';
import '/components/session_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Alerts)] action in HomePage widget.
  ApiCallResponse? alerts;
  // Stores action output result for [Backend Call - API (Menu)] action in HomePage widget.
  ApiCallResponse? taskDetails;
  // Stores action output result for [Backend Call - API (InsertSession)] action in HomePage widget.
  ApiCallResponse? insertSession;
  // Stores action output result for [Backend Call - API (DeleteSession)] action in HomePage widget.
  ApiCallResponse? deleteSession;
  // Stores action output result for [Backend Call - API (InsertSession)] action in HomePage widget.
  ApiCallResponse? insertSession2;
  // Stores action output result for [Backend Call - API (DeleteSession)] action in Button widget.
  ApiCallResponse? deletesession;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Backend Call - API (CheckSession)] action in Container widget.
  ApiCallResponse? checksession;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
