// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String?> fpnLogin(
  String? employeeAdId,
  String? password,
  String? imeiCode,
  String? approverId,
  String? requestId,
  String? formId,
) async {
  var finalJson;
  var obj;

  final url = Uri.parse(
      'https://us-central1-ff-enterprise-demos.cloudfunctions.net/mockAPI/FPN_Mobile_Service/MobileService.svc/Login');
  final data = {
    "EmpActiveDirectoryId": employeeAdId,
    "Password": password,
    "IMEICode": imeiCode,
    "ApproverID": approverId,
    "RequestID": requestId,
    "FormID": formId,
  };

  try {
    final response = await http.post(url, body: data);
    print("***API REPONSE***");
    print(response);
    print("******************");
    final responseHeader = response.headers["fpnauthtoken"];
    return responseHeader;
  } catch (e) {
    throw Exception("Something Failed");
  }
}
