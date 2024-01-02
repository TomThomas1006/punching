import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SystemDetails Group Code

class SystemDetailsGroup {
  static String baseUrl = 'http://localhost:8080/values/';
  static Map<String, String> headers = {};
  static MacAddressCall macAddressCall = MacAddressCall();
  static HostNameCall hostNameCall = HostNameCall();
  static OsInstallDateCall osInstallDateCall = OsInstallDateCall();
  static IpAddressCall ipAddressCall = IpAddressCall();
}

class MacAddressCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Mac Address',
      apiUrl: '${SystemDetailsGroup.baseUrl}getMacID',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic macAddress(dynamic response) => getJsonField(
        response,
        r'''$.Macid''',
      );
}

class HostNameCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'HostName',
      apiUrl: '${SystemDetailsGroup.baseUrl}getHostname',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic hostName(dynamic response) => getJsonField(
        response,
        r'''$.Host''',
      );
}

class OsInstallDateCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Os Install Date',
      apiUrl: '${SystemDetailsGroup.baseUrl}getOsInstalldate',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic osInstallDate(dynamic response) => getJsonField(
        response,
        r'''$.Osinst''',
      );
}

class IpAddressCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'IpAddress',
      apiUrl: '${SystemDetailsGroup.baseUrl}Ipaddress',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic ipAddress(dynamic response) => getJsonField(
        response,
        r'''$.IpAddr''',
      );
}

/// End SystemDetails Group Code

class PasswordCheckCall {
  static Future<ApiCallResponse> call({
    String? empID = '',
    String? pswd = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'PasswordCheck',
      apiUrl:
          'https://uatapp.manappuram.net/GlobalApi/api/helper/GetRoles/${empID}/${pswd}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic accessId(dynamic response) => getJsonField(
        response,
        r'''$.accessId''',
      );
  static dynamic roleId(dynamic response) => getJsonField(
        response,
        r'''$.roleId''',
      );
  static dynamic branchId(dynamic response) => getJsonField(
        response,
        r'''$.branchId''',
      );
  static dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.flag''',
      );
  static dynamic isSuccess(dynamic response) => getJsonField(
        response,
        r'''$.isSuccess''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class MenuCall {
  static Future<ApiCallResponse> call({
    String? flag = '',
    String? empID = '',
    String? speci = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Menu',
      apiUrl:
          'https://uatapp.manappuram.net/TaskManagement/api/tasks/GetTaskDetails/${flag}/${empID}/${speci}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic taskid(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].task_id''',
        true,
      );
  static dynamic subject(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].subject''',
        true,
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].status''',
        true,
      );
  static dynamic content(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[:].content''',
        true,
      );
  static dynamic subtaskid1(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[?(@.sub_task_id==1)]''',
        true,
      );
  static dynamic subtaskid2(dynamic response) => getJsonField(
        response,
        r'''$.taskDetails[?(@.sub_task_id==2)]''',
        true,
      );
}

class TokenGenerationCall {
  static Future<ApiCallResponse> call({
    String? empcode = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "empcode": "${empcode}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TokenGeneration',
      apiUrl:
          'https://uatapp.manappuram.net/GlobalApi/api/authentication/AuthenticateUser',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.Token''',
      );
}

class EmployeeNameCall {
  static Future<ApiCallResponse> call({
    String? speci1 = '',
    String? speci2 = '',
    String? empid = '',
    String? hostname = '',
    String? mac = '',
    String? fromtime = '',
    String? totime = '',
    String? flag = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'EmployeeName',
      apiUrl:
          'https://uatapp.manappuram.net/PortalApi/api/portal/GetPortalDetails/${flag}/${speci1}/${speci2}/${empid}/${hostname}/${mac}/${fromtime}/${totime}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic empName(dynamic response) => getJsonField(
        response,
        r'''$.EMP_NAME''',
      );
  static dynamic postId(dynamic response) => getJsonField(
        response,
        r'''$.POST_ID''',
      );
}

class EmployeeNameCopyCall {
  static Future<ApiCallResponse> call({
    String? speci1 = '',
    String? speci2 = '',
    String? empid = '',
    String? hostname = '',
    String? mac = '',
    String? fromtime = '',
    String? totime = '',
    String? flag = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'EmployeeName Copy',
      apiUrl:
          'https://uatapp.manappuram.net/PunchApi/api/employee/GetBranchDetails/${flag}/${speci1}/${speci2}/${empid}/${hostname}/${mac}/${fromtime}/${totime}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic empName(dynamic response) => getJsonField(
        response,
        r'''$.EMP_NAME''',
      );
  static dynamic postId(dynamic response) => getJsonField(
        response,
        r'''$.POST_ID''',
      );
}

class BranchDetailsCall {
  static Future<ApiCallResponse> call({
    String? macId = '',
    String? hostName = '',
    String? osInstallDate = '',
    String? param = '',
    String? userId = '',
    String? empPunchedBr = '',
    String? roleId = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "macId": "${macId}",
  "hostName": "${hostName}",
  "osInstallDate": "${osInstallDate}",
  "param": "${param}",
  "userId": "${userId}",
  "empPunchedBr": "${empPunchedBr}",
  "roleId": "${roleId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'BranchDetails',
      apiUrl: 'https://uatapp.manappuram.net/PortalApi/api/portal/Validate',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic branchid(dynamic response) => getJsonField(
        response,
        r'''$.branchId''',
      );
  static dynamic branchname(dynamic response) => getJsonField(
        response,
        r'''$.branchName''',
      );
  static dynamic result(dynamic response) => getJsonField(
        response,
        r'''$.result''',
      );
}

class AlertsCall {
  static Future<ApiCallResponse> call({
    String? flag = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Alerts',
      apiUrl:
          'https://uatapp.manappuram.net/PortalApi/api/portal/GetAlerts/${flag}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic alertMessage(dynamic response) => getJsonField(
        response,
        r'''$.MESSAGE''',
      );
}

class InsertSessionCall {
  static Future<ApiCallResponse> call({
    String? optflag = '',
    String? firmid = '',
    String? branchid = '',
    String? mac = '',
    String? sessionId = '',
    String? param = '',
    String? hostname = '',
    String? userid = '',
    String? fromdate = '',
    String? todate = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "optflag": "${optflag}",
  "firmid": "${firmid}",
  "branchid": "${branchid}",
  "macAddress": "${mac}",
  "sessionId": "${sessionId}",
  "param": "${param}",
  "hostname": "${hostname}",
  "userid": "${userid}",
  "fromdate": "${fromdate}",
  "todate": "${todate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'InsertSession',
      apiUrl: 'https://uatapp.manappuram.net/PortalApi/api/portal/Upsert',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic sessionresponse(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class DeleteSessionCall {
  static Future<ApiCallResponse> call({
    String? optflag = '',
    String? firmid = '',
    String? branchid = '',
    String? mac = '',
    String? sessionId = '',
    String? param = '',
    String? hostname = '',
    String? userid = '',
    String? fromdate = '',
    String? todate = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "optflag": "${optflag}",
  "firmid": "${firmid}",
  "branchid": "${branchid}",
  "macAddress": "${mac}",
  "sessionId": "${sessionId}",
  "param": "${param}",
  "hostname": "${hostname}",
  "userid": "${userid}",
  "fromdate": "${fromdate}",
  "todate": "${todate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DeleteSession',
      apiUrl: 'https://uatapp.manappuram.net/PortalApi/api/portal/Upsert',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic deletesessionresponse(dynamic response) => getJsonField(
        response,
        r'''$.response''',
      );
}

class CheckSessionCall {
  static Future<ApiCallResponse> call({
    String? empcode = '',
    String? password = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CheckSession',
      apiUrl:
          'https://uatapp.manappuram.net/GlobalApi/api/helper/CheckCredentials/${empcode}/${password}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic flag(dynamic response) => getJsonField(
        response,
        r'''$.flag''',
      );
}

class SendOTPCall {
  static Future<ApiCallResponse> call({
    String? empId = '',
    String? accId = '',
    String? mobileNo = '',
    String? message = '',
  }) async {
    final ffApiRequestBody = '''
{
  "empId": "${empId}",
  "accId": "${accId}",
  "mobileNo": "${mobileNo}",
  "message": "${message}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send OTP',
      apiUrl:
          'https://uatapp.manappuram.net/PortalApi/api/login/EmployeeSendOTP',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic otplife(dynamic response) => getJsonField(
        response,
        r'''$.OTPLife''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic errormessage(dynamic response) => getJsonField(
        response,
        r'''$.errorMessage''',
      );
}

class VerifyOTPCall {
  static Future<ApiCallResponse> call({
    String? empId = '',
    String? otp = '',
  }) async {
    final ffApiRequestBody = '''
{
  "empId": "${empId}",
  "otp": "${otp}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'VerifyOTP',
      apiUrl:
          'https://uatapp.manappuram.net/PortalApi/api/login/EmployeeVerifyOTP',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
  static dynamic errormessage(dynamic response) => getJsonField(
        response,
        r'''$.errorMessage''',
      );
}

class ResetPasswordCall {
  static Future<ApiCallResponse> call({
    String? empCode = '',
    String? joingDate = '',
    String? dateOfBirth = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "empCode": "${empCode}",
  "joingDate": "${joingDate}",
  "dateOfBirth": "${dateOfBirth}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Reset Password',
      apiUrl:
          'https://uatapp.manappuram.net/PortalApi/api/login/ChangeEmpPassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.message''',
      );
}

class ChangePasswordCall {
  static Future<ApiCallResponse> call({
    String? empCode = '',
    String? password = '',
    String? oldPassword = '',
  }) async {
    final ffApiRequestBody = '''
{
  "empCode": "${empCode}",
  "password": "${password}",
  "oldPassword": "${oldPassword}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'change Password',
      apiUrl:
          'https://uatapp.manappuram.net/GlobalApi/api/helper/ChangePassword',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
