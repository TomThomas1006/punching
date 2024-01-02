import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _employeecode = '';
  String get employeecode => _employeecode;
  set employeecode(String _value) {
    _employeecode = _value;
  }

  String _emppassword = '';
  String get emppassword => _emppassword;
  set emppassword(String _value) {
    _emppassword = _value;
  }

  String _accessid = '';
  String get accessid => _accessid;
  set accessid(String _value) {
    _accessid = _value;
  }

  String _roleid = '';
  String get roleid => _roleid;
  set roleid(String _value) {
    _roleid = _value;
  }

  String _branchid = '';
  String get branchid => _branchid;
  set branchid(String _value) {
    _branchid = _value;
  }

  String _passwordflag = '';
  String get passwordflag => _passwordflag;
  set passwordflag(String _value) {
    _passwordflag = _value;
  }

  String _isSuccess = '';
  String get isSuccess => _isSuccess;
  set isSuccess(String _value) {
    _isSuccess = _value;
  }

  String _PasswordMessage = '';
  String get PasswordMessage => _PasswordMessage;
  set PasswordMessage(String _value) {
    _PasswordMessage = _value;
  }

  String _emppunchbranchid = '';
  String get emppunchbranchid => _emppunchbranchid;
  set emppunchbranchid(String _value) {
    _emppunchbranchid = _value;
  }

  String _macaddress = '';
  String get macaddress => _macaddress;
  set macaddress(String _value) {
    _macaddress = _value;
  }

  String _osinstalldate = '';
  String get osinstalldate => _osinstalldate;
  set osinstalldate(String _value) {
    _osinstalldate = _value;
  }

  String _hostname = '';
  String get hostname => _hostname;
  set hostname(String _value) {
    _hostname = _value;
  }

  String _ipaddress = '';
  String get ipaddress => _ipaddress;
  set ipaddress(String _value) {
    _ipaddress = _value;
  }

  String _employeename = '';
  String get employeename => _employeename;
  set employeename(String _value) {
    _employeename = _value;
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
  }

  String _branchname = '';
  String get branchname => _branchname;
  set branchname(String _value) {
    _branchname = _value;
  }

  String _result = '';
  String get result => _result;
  set result(String _value) {
    _result = _value;
  }

  String _userid = '';
  String get userid => _userid;
  set userid(String _value) {
    _userid = _value;
  }

  String _session = '';
  String get session => _session;
  set session(String _value) {
    _session = _value;
  }

  String _sessionencrypt = '';
  String get sessionencrypt => _sessionencrypt;
  set sessionencrypt(String _value) {
    _sessionencrypt = _value;
  }

  String _Alerts = '';
  String get Alerts => _Alerts;
  set Alerts(String _value) {
    _Alerts = _value;
  }

  String _insertsessionresponse = '';
  String get insertsessionresponse => _insertsessionresponse;
  set insertsessionresponse(String _value) {
    _insertsessionresponse = _value;
  }

  List<String> _empnamelist = [];
  List<String> get empnamelist => _empnamelist;
  set empnamelist(List<String> _value) {
    _empnamelist = _value;
  }

  void addToEmpnamelist(String _value) {
    _empnamelist.add(_value);
  }

  void removeFromEmpnamelist(String _value) {
    _empnamelist.remove(_value);
  }

  void removeAtIndexFromEmpnamelist(int _index) {
    _empnamelist.removeAt(_index);
  }

  void updateEmpnamelistAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _empnamelist[_index] = updateFn(_empnamelist[_index]);
  }

  void insertAtIndexInEmpnamelist(int _index, String _value) {
    _empnamelist.insert(_index, _value);
  }

  String _firstletterempname = '';
  String get firstletterempname => _firstletterempname;
  set firstletterempname(String _value) {
    _firstletterempname = _value;
  }

  List<String> _firstnameemplist = [];
  List<String> get firstnameemplist => _firstnameemplist;
  set firstnameemplist(List<String> _value) {
    _firstnameemplist = _value;
  }

  void addToFirstnameemplist(String _value) {
    _firstnameemplist.add(_value);
  }

  void removeFromFirstnameemplist(String _value) {
    _firstnameemplist.remove(_value);
  }

  void removeAtIndexFromFirstnameemplist(int _index) {
    _firstnameemplist.removeAt(_index);
  }

  void updateFirstnameemplistAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _firstnameemplist[_index] = updateFn(_firstnameemplist[_index]);
  }

  void insertAtIndexInFirstnameemplist(int _index, String _value) {
    _firstnameemplist.insert(_index, _value);
  }

  String _firstletter = '';
  String get firstletter => _firstletter;
  set firstletter(String _value) {
    _firstletter = _value;
  }

  String _Reset = '';
  String get Reset => _Reset;
  set Reset(String _value) {
    _Reset = _value;
  }

  String _dob = '';
  String get dob => _dob;
  set dob(String _value) {
    _dob = _value;
  }

  String _doj = '';
  String get doj => _doj;
  set doj(String _value) {
    _doj = _value;
  }

  String _lostFocusValue = '';
  String get lostFocusValue => _lostFocusValue;
  set lostFocusValue(String _value) {
    _lostFocusValue = _value;
  }

  String _animation = '';
  String get animation => _animation;
  set animation(String _value) {
    _animation = _value;
  }

  String _sendotpstatus = '';
  String get sendotpstatus => _sendotpstatus;
  set sendotpstatus(String _value) {
    _sendotpstatus = _value;
  }

  String _verifyotp = '';
  String get verifyotp => _verifyotp;
  set verifyotp(String _value) {
    _verifyotp = _value;
  }

  String _doborg = '';
  String get doborg => _doborg;
  set doborg(String _value) {
    _doborg = _value;
  }

  String _dojorg = '';
  String get dojorg => _dojorg;
  set dojorg(String _value) {
    _dojorg = _value;
  }

  String _resetpassmsg = '';
  String get resetpassmsg => _resetpassmsg;
  set resetpassmsg(String _value) {
    _resetpassmsg = _value;
  }

  String _passchk = '';
  String get passchk => _passchk;
  set passchk(String _value) {
    _passchk = _value;
  }

  String _changepassstatus = '';
  String get changepassstatus => _changepassstatus;
  set changepassstatus(String _value) {
    _changepassstatus = _value;
  }

  String _encryptusername = '';
  String get encryptusername => _encryptusername;
  set encryptusername(String _value) {
    _encryptusername = _value;
  }

  String _encryptpassword = '';
  String get encryptpassword => _encryptpassword;
  set encryptpassword(String _value) {
    _encryptpassword = _value;
  }

  String _hexvalue = '';
  String get hexvalue => _hexvalue;
  set hexvalue(String _value) {
    _hexvalue = _value;
  }

  String _basehexsession = '';
  String get basehexsession => _basehexsession;
  set basehexsession(String _value) {
    _basehexsession = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
