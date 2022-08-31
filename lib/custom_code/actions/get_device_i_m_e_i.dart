// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:device_information/device_information.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;

import 'package:permission_handler/permission_handler.dart';

Future<String> getDeviceIMEI() async {
  String imeiNo = '';

  try {
    if (Platform.isAndroid) {
      bool isPermissionGranted = await Permission.phone.request().isGranted;
      if (isPermissionGranted) {
        imeiNo = await DeviceInformation.deviceIMEINumber;
      }
    } else if (Platform.isIOS) {
      imeiNo = await DeviceInformation.deviceIMEINumber;
    } else {
      debugPrint('IMEI for this platform for supported');
    }
  } on PlatformException {
    throw ('Failed to get device ID.');
  }

  return imeiNo;
}
