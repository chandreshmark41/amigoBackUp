// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:webview_flutter/webview_flutter.dart';

class TcoWidget extends StatefulWidget {
  const TcoWidget({
    Key? key,
    this.width,
    this.height,
    required this.responseData,
  }) : super(key: key);

  final double? width;
  final double? height;
  final dynamic responseData;

  @override
  _TcoWidgetState createState() => _TcoWidgetState();
}

class _TcoWidgetState extends State<TcoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
