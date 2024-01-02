import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        BlurEffect(
          curve: Curves.easeInOut,
          delay: 10.ms,
          duration: 140.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.usernameController?.clear();
        _model.passwordController?.clear();
      });
      setState(() {
        FFAppState().animation = '0';
      });
      _model.macAddress = await SystemDetailsGroup.macAddressCall.call();
      _model.hostName = await SystemDetailsGroup.hostNameCall.call();
      _model.osInstalldate = await SystemDetailsGroup.osInstallDateCall.call();
      _model.ipAddress = await SystemDetailsGroup.ipAddressCall.call();
      setState(() {
        FFAppState().hostname = SystemDetailsGroup.hostNameCall
            .hostName(
              (_model.hostName?.jsonBody ?? ''),
            )
            .toString()
            .toString();
        FFAppState().osinstalldate = SystemDetailsGroup.osInstallDateCall
            .osInstallDate(
              (_model.osInstalldate?.jsonBody ?? ''),
            )
            .toString()
            .toString();
        FFAppState().macaddress = SystemDetailsGroup.macAddressCall
            .macAddress(
              (_model.macAddress?.jsonBody ?? ''),
            )
            .toString()
            .toString();
        FFAppState().ipaddress = SystemDetailsGroup.ipAddressCall
            .ipAddress(
              (_model.ipAddress?.jsonBody ?? ''),
            )
            .toString()
            .toString();
      });
      if (FFAppState().macaddress == '') {
        await showDialog(
          context: context,
          builder: (alertDialogContext) {
            return AlertDialog(
              content: Text(
                  'Not able to fetch physical address of your system. Please enable \"Local Area Connection\"'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(alertDialogContext),
                  child: Text('Ok'),
                ),
              ],
            );
          },
        );
        return;
      } else {
        if (FFAppState().hostname == '') {
          await showDialog(
            context: context,
            builder: (alertDialogContext) {
              return AlertDialog(
                content: Text(
                    'Host name should not be empty. Please check your computer name'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(alertDialogContext),
                    child: Text('Ok'),
                  ),
                ],
              );
            },
          );
          return;
        }
        return;
      }
    });

    _model.usernameController ??= TextEditingController();
    _model.usernameFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.65,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Capture.PNG',
                                ).image,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(150.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(150.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-0.20, -0.55),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.14,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.07,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: Image.asset(
                                                  'assets/images/logo.png',
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.55,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.63,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/Black_BG.png',
                                            ).image,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(120.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(120.0),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 50.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'MANAPPURAM APPLICATION PORTAL',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -0.30, -0.15),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.2,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.25,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x00FFFFFF),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await launchURL(
                                                                  'https://app.manappuram.net/flutterpunch/FlutterDeploy.application');
                                                            },
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.1,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    image:
                                                                        DecorationImage(
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      image: Image
                                                                          .asset(
                                                                        'assets/images/abcdd.gif',
                                                                      ).image,
                                                                    ),
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.00,
                                                                          0.00),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          9.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'PUNCHING',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.34,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.38,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x00FFFFFF),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 3.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                          ),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.26,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.53,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'PORTAL LOGIN',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Monda',
                                                                              fontSize: 16.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          35.0,
                                                                          10.0,
                                                                          35.0,
                                                                          0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.usernameController,
                                                                        focusNode:
                                                                            _model.usernameFocusNode,
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              'USER ID',
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFBB1818),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFBB1818),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          errorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: Color(0xFF101213),
                                                                            ),
                                                                        keyboardType:
                                                                            TextInputType.number,
                                                                        validator: _model
                                                                            .usernameControllerValidator
                                                                            .asValidator(context),
                                                                        inputFormatters: [
                                                                          _model
                                                                              .usernameMask
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          35.0,
                                                                          10.0,
                                                                          35.0,
                                                                          0.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.passwordController,
                                                                        focusNode:
                                                                            _model.passwordFocusNode,
                                                                        onFieldSubmitted:
                                                                            (_) async {
                                                                          var _shouldSetState =
                                                                              false;
                                                                          if (_model.usernameController.text == null ||
                                                                              _model.usernameController.text == '') {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('ALERT'),
                                                                                  content: Text('Please Enter UserId'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                            if (_shouldSetState)
                                                                              setState(() {});
                                                                            return;
                                                                          } else {
                                                                            if (_model.passwordController.text == null ||
                                                                                _model.passwordController.text == '') {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('ALERT'),
                                                                                    content: Text('Please Enter Password'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                              if (_shouldSetState)
                                                                                setState(() {});
                                                                              return;
                                                                            } else {
                                                                              setState(() {
                                                                                FFAppState().animation = '1';
                                                                              });
                                                                              _model.passworddec = await actions.encryption(
                                                                                _model.passwordController.text,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              setState(() {
                                                                                FFAppState().encryptpassword = _model.passworddec!;
                                                                              });
                                                                              _model.basehex = await actions.basehex(
                                                                                FFAppState().encryptpassword,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              setState(() {
                                                                                FFAppState().hexvalue = _model.basehex!;
                                                                              });
                                                                              _model.passwordCheckcopy = await PasswordCheckCall.call(
                                                                                empID: _model.usernameController.text,
                                                                                pswd: FFAppState().hexvalue,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              setState(() {
                                                                                FFAppState().accessid = PasswordCheckCall.accessId(
                                                                                  (_model.passwordCheckcopy?.jsonBody ?? ''),
                                                                                ).toString();
                                                                                FFAppState().roleid = PasswordCheckCall.roleId(
                                                                                  (_model.passwordCheckcopy?.jsonBody ?? ''),
                                                                                ).toString();
                                                                                FFAppState().passwordflag = PasswordCheckCall.flag(
                                                                                  (_model.passwordCheckcopy?.jsonBody ?? ''),
                                                                                ).toString();
                                                                                FFAppState().isSuccess = PasswordCheckCall.isSuccess(
                                                                                  (_model.passwordCheckcopy?.jsonBody ?? ''),
                                                                                ).toString();
                                                                                FFAppState().PasswordMessage = PasswordCheckCall.message(
                                                                                  (_model.passwordCheckcopy?.jsonBody ?? ''),
                                                                                ).toString();
                                                                                FFAppState().emppunchbranchid = PasswordCheckCall.branchId(
                                                                                  (_model.passwordCheckcopy?.jsonBody ?? ''),
                                                                                ).toString();
                                                                              });
                                                                              setState(() {
                                                                                FFAppState().employeecode = _model.usernameController.text;
                                                                                FFAppState().emppassword = _model.passwordController.text;
                                                                              });
                                                                              if ((FFAppState().isSuccess == 'True') || (FFAppState().isSuccess == 'Warning')) {
                                                                                if (FFAppState().isSuccess == 'Warning') {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        content: Text(FFAppState().PasswordMessage),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                }
                                                                                _model.tokenGenerationCopy = await TokenGenerationCall.call(
                                                                                  empcode: FFAppState().employeecode,
                                                                                  password: _model.passwordController.text,
                                                                                );
                                                                                _shouldSetState = true;
                                                                                setState(() {
                                                                                  FFAppState().token = TokenGenerationCall.token(
                                                                                    (_model.tokenGenerationCopy?.jsonBody ?? ''),
                                                                                  ).toString();
                                                                                });
                                                                                _model.employeeNameCopy = await EmployeeNameCall.call(
                                                                                  speci1: '1',
                                                                                  speci2: '0',
                                                                                  empid: FFAppState().employeecode,
                                                                                  hostname: FFAppState().hostname,
                                                                                  mac: FFAppState().macaddress,
                                                                                  fromtime: '12:00 AM',
                                                                                  totime: '02:00 PM',
                                                                                  flag: 'GETEMPDET',
                                                                                  token: FFAppState().token,
                                                                                );
                                                                                _shouldSetState = true;
                                                                                setState(() {
                                                                                  FFAppState().employeename = EmployeeNameCall.empName(
                                                                                    (_model.employeeNameCopy?.jsonBody ?? ''),
                                                                                  ).toString();
                                                                                });
                                                                                _model.branchDetailsCopy = await BranchDetailsCall.call(
                                                                                  macId: FFAppState().macaddress,
                                                                                  hostName: FFAppState().hostname,
                                                                                  osInstallDate: FFAppState().osinstalldate,
                                                                                  param: '|0',
                                                                                  userId: FFAppState().employeecode,
                                                                                  empPunchedBr: FFAppState().emppunchbranchid,
                                                                                  roleId: FFAppState().roleid,
                                                                                  token: FFAppState().token,
                                                                                );
                                                                                _shouldSetState = true;
                                                                                setState(() {
                                                                                  FFAppState().branchname = BranchDetailsCall.branchname(
                                                                                    (_model.branchDetailsCopy?.jsonBody ?? ''),
                                                                                  ).toString();
                                                                                  FFAppState().branchid = BranchDetailsCall.branchid(
                                                                                    (_model.branchDetailsCopy?.jsonBody ?? ''),
                                                                                  ).toString();
                                                                                  FFAppState().result = BranchDetailsCall.result(
                                                                                    (_model.branchDetailsCopy?.jsonBody ?? ''),
                                                                                  ).toString();
                                                                                });
                                                                                if (FFAppState().result == 'Success') {
                                                                                  setState(() {
                                                                                    FFAppState().userid = '${FFAppState().employeecode}!${FFAppState().ipaddress}';
                                                                                  });
                                                                                  setState(() {
                                                                                    FFAppState().session = '${FFAppState().branchid}|${FFAppState().branchname}|${FFAppState().userid}|${FFAppState().employeename}|${FFAppState().emppunchbranchid}|${FFAppState().accessid}|${FFAppState().roleid}|${dateTimeFormat('jms', getCurrentTimestamp)}';
                                                                                  });
                                                                                  _model.encodebase64 = await actions.encodeBase64(
                                                                                    FFAppState().session,
                                                                                  );
                                                                                  _shouldSetState = true;
                                                                                  setState(() {
                                                                                    FFAppState().sessionencrypt = _model.encodebase64!;
                                                                                  });
                                                                                  setState(() {
                                                                                    _model.usernameController?.clear();
                                                                                    _model.passwordController?.clear();
                                                                                  });

                                                                                  context.pushNamed('HomePage');
                                                                                } else {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        content: Text(FFAppState().result),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                  setState(() {
                                                                                    _model.usernameController?.clear();
                                                                                    _model.passwordController?.clear();
                                                                                  });
                                                                                  setState(() {
                                                                                    FFAppState().animation = '0';
                                                                                  });
                                                                                  if (_shouldSetState) setState(() {});
                                                                                  return;
                                                                                }

                                                                                if (_shouldSetState) setState(() {});
                                                                                return;
                                                                              } else {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      content: Text(FFAppState().PasswordMessage),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                                setState(() {
                                                                                  _model.usernameController?.clear();
                                                                                  _model.passwordController?.clear();
                                                                                });
                                                                                setState(() {
                                                                                  FFAppState().animation = '0';
                                                                                });
                                                                                if (_shouldSetState) setState(() {});
                                                                                return;
                                                                              }
                                                                            }
                                                                          }

                                                                          if (_shouldSetState)
                                                                            setState(() {});
                                                                        },
                                                                        autofocus:
                                                                            true,
                                                                        obscureText:
                                                                            !_model.passwordVisibility,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              'Password',
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFBB1818),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFFBB1818),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          errorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1.0,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          suffixIcon:
                                                                              InkWell(
                                                                            onTap: () =>
                                                                                setState(
                                                                              () => _model.passwordVisibility = !_model.passwordVisibility,
                                                                            ),
                                                                            focusNode:
                                                                                FocusNode(skipTraversal: true),
                                                                            child:
                                                                                Icon(
                                                                              _model.passwordVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                                                              color: Color(0xFF757575),
                                                                              size: 22.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium,
                                                                        validator: _model
                                                                            .passwordControllerValidator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          35.0,
                                                                          7.0,
                                                                          35.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed('ResetPassword');
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              'Reset Password ?',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    fontSize: 10.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed('ChangePassword');
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              'Change Password ?',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    fontSize: 10.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          var _shouldSetState =
                                                                              false;
                                                                          if (_model.usernameController.text == null ||
                                                                              _model.usernameController.text == '') {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: Text('ALERT'),
                                                                                  content: Text('Please Enter UserId'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                            if (_shouldSetState)
                                                                              setState(() {});
                                                                            return;
                                                                          } else {
                                                                            if (_model.passwordController.text == null ||
                                                                                _model.passwordController.text == '') {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('ALERT'),
                                                                                    content: Text('Please Enter Password'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                              if (_shouldSetState)
                                                                                setState(() {});
                                                                              return;
                                                                            } else {
                                                                              setState(() {
                                                                                FFAppState().animation = '1';
                                                                              });
                                                                              _model.passwordenc = await actions.encryption(
                                                                                _model.passwordController.text,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              setState(() {
                                                                                FFAppState().encryptpassword = _model.passwordenc!;
                                                                              });
                                                                              _model.hex = await actions.basehex(
                                                                                FFAppState().encryptpassword,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              setState(() {
                                                                                FFAppState().hexvalue = _model.hex!;
                                                                              });
                                                                              _model.passwordCheck = await PasswordCheckCall.call(
                                                                                empID: _model.usernameController.text,
                                                                                pswd: FFAppState().hexvalue,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              setState(() {
                                                                                FFAppState().accessid = PasswordCheckCall.accessId(
                                                                                  (_model.passwordCheck?.jsonBody ?? ''),
                                                                                ).toString();
                                                                                FFAppState().roleid = PasswordCheckCall.roleId(
                                                                                  (_model.passwordCheck?.jsonBody ?? ''),
                                                                                ).toString();
                                                                                FFAppState().passwordflag = PasswordCheckCall.flag(
                                                                                  (_model.passwordCheck?.jsonBody ?? ''),
                                                                                ).toString();
                                                                                FFAppState().isSuccess = PasswordCheckCall.isSuccess(
                                                                                  (_model.passwordCheck?.jsonBody ?? ''),
                                                                                ).toString();
                                                                                FFAppState().PasswordMessage = PasswordCheckCall.message(
                                                                                  (_model.passwordCheck?.jsonBody ?? ''),
                                                                                ).toString();
                                                                                FFAppState().emppunchbranchid = PasswordCheckCall.branchId(
                                                                                  (_model.passwordCheck?.jsonBody ?? ''),
                                                                                ).toString();
                                                                              });
                                                                              setState(() {
                                                                                FFAppState().employeecode = _model.usernameController.text;
                                                                                FFAppState().emppassword = _model.passwordController.text;
                                                                              });
                                                                              if ((FFAppState().isSuccess == 'True') || (FFAppState().isSuccess == 'Warning')) {
                                                                                if (FFAppState().isSuccess == 'Warning') {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        content: Text(FFAppState().PasswordMessage),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                }
                                                                                _model.tokenGeneration = await TokenGenerationCall.call(
                                                                                  empcode: FFAppState().employeecode,
                                                                                  password: _model.passwordController.text,
                                                                                );
                                                                                _shouldSetState = true;
                                                                                setState(() {
                                                                                  FFAppState().token = TokenGenerationCall.token(
                                                                                    (_model.tokenGeneration?.jsonBody ?? ''),
                                                                                  ).toString();
                                                                                });
                                                                                _model.employeeName = await EmployeeNameCall.call(
                                                                                  speci1: '0',
                                                                                  speci2: '1',
                                                                                  empid: FFAppState().employeecode,
                                                                                  hostname: FFAppState().hostname,
                                                                                  mac: FFAppState().macaddress,
                                                                                  fromtime: '12:00 AM',
                                                                                  totime: '02:00 PM',
                                                                                  flag: 'GETEMPDET',
                                                                                  token: FFAppState().token,
                                                                                );
                                                                                _shouldSetState = true;
                                                                                setState(() {
                                                                                  FFAppState().employeename = EmployeeNameCall.empName(
                                                                                    (_model.employeeName?.jsonBody ?? ''),
                                                                                  ).toString();
                                                                                });
                                                                                _model.branchDetails = await BranchDetailsCall.call(
                                                                                  macId: FFAppState().macaddress,
                                                                                  hostName: FFAppState().hostname,
                                                                                  osInstallDate: FFAppState().osinstalldate,
                                                                                  param: '|0',
                                                                                  userId: FFAppState().employeecode,
                                                                                  empPunchedBr: FFAppState().emppunchbranchid,
                                                                                  roleId: FFAppState().roleid,
                                                                                  token: FFAppState().token,
                                                                                );
                                                                                _shouldSetState = true;
                                                                                setState(() {
                                                                                  FFAppState().branchname = BranchDetailsCall.branchname(
                                                                                    (_model.branchDetails?.jsonBody ?? ''),
                                                                                  ).toString();
                                                                                  FFAppState().branchid = BranchDetailsCall.branchid(
                                                                                    (_model.branchDetails?.jsonBody ?? ''),
                                                                                  ).toString();
                                                                                  FFAppState().result = BranchDetailsCall.result(
                                                                                    (_model.branchDetails?.jsonBody ?? ''),
                                                                                  ).toString();
                                                                                });
                                                                                if (FFAppState().result == 'Success') {
                                                                                  setState(() {
                                                                                    FFAppState().userid = '${FFAppState().employeecode}!${FFAppState().ipaddress}';
                                                                                  });
                                                                                  setState(() {
                                                                                    FFAppState().session = '${FFAppState().branchid}|${FFAppState().branchname}|${FFAppState().userid}|${FFAppState().employeename}|${FFAppState().emppunchbranchid}|${FFAppState().accessid}|${FFAppState().roleid}|${dateTimeFormat('jms', getCurrentTimestamp)}';
                                                                                  });
                                                                                  _model.base64 = await actions.encodeBase64(
                                                                                    FFAppState().session,
                                                                                  );
                                                                                  _shouldSetState = true;
                                                                                  setState(() {
                                                                                    FFAppState().sessionencrypt = _model.base64!;
                                                                                  });

                                                                                  context.goNamed('HomePage');
                                                                                } else {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        content: Text(FFAppState().result),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                  setState(() {
                                                                                    _model.usernameController?.clear();
                                                                                    _model.passwordController?.clear();
                                                                                  });
                                                                                  setState(() {
                                                                                    FFAppState().animation = '0';
                                                                                  });
                                                                                  if (_shouldSetState) setState(() {});
                                                                                  return;
                                                                                }

                                                                                if (_shouldSetState) setState(() {});
                                                                                return;
                                                                              } else {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      content: Text(FFAppState().PasswordMessage),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                                setState(() {
                                                                                  _model.usernameController?.clear();
                                                                                  _model.passwordController?.clear();
                                                                                });
                                                                                setState(() {
                                                                                  FFAppState().animation = '0';
                                                                                });
                                                                                if (_shouldSetState) setState(() {});
                                                                                return;
                                                                              }
                                                                            }
                                                                          }

                                                                          if (_shouldSetState)
                                                                            setState(() {});
                                                                        },
                                                                        text:
                                                                            'LOGIN',
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              80.0,
                                                                          height:
                                                                              28.0,
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          color:
                                                                              Color(0xFFFF0000),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: Colors.white,
                                                                                fontSize: 11.0,
                                                                              ),
                                                                          elevation:
                                                                              2.0,
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        showLoadingIndicator:
                                                                            false,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                if (FFAppState()
                                                                        .animation ==
                                                                    '1')
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.02,
                                                                            -0.30),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          50.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            75.0,
                                                                        height:
                                                                            75.0,
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/manappuram-loading-latest-unscreen.gif',
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.35,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Contact Details',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.28,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.18,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: Color(0xFFE9EBE2),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'For Applications,Network & System Related Support:',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xEAFE0808),
                                                      fontSize: 11.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Please Contact IT Helpdesk: (24X7)',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 11.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                color: Colors.black,
                                                size: 12.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
                                                child: SelectionArea(
                                                    child: Text(
                                                  'PH : 0487-2437006 ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.mail,
                                                color: Colors.black,
                                                size: 12.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
                                                child: SelectionArea(
                                                    child: Text(
                                                  'Mail : helpdesk@manappuram.com',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.28,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.18,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: Color(0xFFE9EBE2),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'For Alarm,Centralized & IP Camera Related Support:',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xEAFE0808),
                                                      fontSize: 11.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Please Contact Electronic Security Helpdesk: (24X7)',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 11.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                color: Colors.black,
                                                size: 12.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'PH : 0487-3050234 / 236 / 274',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.mail,
                                                color: Colors.black,
                                                size: 12.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Mail : esecurityhelpdesk@manappuram.com',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.28,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.18,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: Color(0xFFE9EBE2),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'For Employee/HR/Salary/Leave Related Support:',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xEAFE0808),
                                                      fontSize: 11.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Please Contact HR Helpdesk: (24X7)',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 11.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                color: Colors.black,
                                                size: 12.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'PH :0487-3050105',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.mail,
                                                color: Colors.black,
                                                size: 12.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Mail : hrhelpdesk@manappuram.com',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 3.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.28,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.18,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: Color(0xFFE9EBE2),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'For Employee Grievance Related Support:',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color: Color(0xEAFE0808),
                                                      fontSize: 11.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Please Contact Grievance Cell:',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 11.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                color: Colors.black,
                                                size: 12.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'PH :0487-3050135 ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.mail,
                                                color: Colors.black,
                                                size: 12.0,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        2.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Mail : grievances@manappuram.com',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ).animateOnActionTrigger(
                    animationsMap['containerOnActionTriggerAnimation']!,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
