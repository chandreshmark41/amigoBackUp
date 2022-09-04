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
  final htmlString = ''' <!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>
<body>

<h2>Responsive Table</h2>
<p>If you have a table that is too wide, you can add a container element with overflow-x:auto around the table, and it will display a horizontal scroll bar when needed.</p>
<p>Resize the browser window to see the effect. Try to remove the div element and see what happens to the table.</p>




  <table>
    <tr>
      <th>First Name</th>
      <th>Last Name</th>
      
      <td rowspan = "4" style= "overflow-x:auto">
      <div style="overflow-x:auto;">
      <table>
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Last Name</th>
          <th>Last Name</th>
          <th>Last Name</th>
          <th>Last Name</th>
          <th>Last Name</th>
          <th>Last Name</th>

        </tr>
        <tr>

          <td>Jill</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>

        </tr>
        <tr>
          <td>Eve</td>
          <td>Jackson</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>

        </tr>
        <tr>
          <td>Adam</td>
          <td>Johnson</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>
          <td>Smith</td>

        </tr>

   	 </table>
     </div>
      
      </td>
      
    </tr>
    <tr>
      <td>Jill</td>
      <td>Smith</td>
      
    </tr>
    <tr>
      <td>Eve</td>
      <td>Jackson</td>
      
    </tr>
    <tr>
      <td>Adam</td>
      <td>Johnson</td>
      
    </tr>
  </table>

</body>
</html>
 ''';

  void loadLocalHtml() async {
    final url = Uri.dataFromString(
      htmlString,
      mimeType: 'text/html',
      encoding: Encoding.getByName('utf-8'),
    ).toString();

    controller.loadUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          this.controller = controller;
          loadLocalHtml();
        });
  }
}
