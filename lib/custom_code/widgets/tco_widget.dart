// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:convert';

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
  String finalString = "";

  //////////////////////////////// tcoTableData ////////////////////////////////////////////

  String getTcoTableData(dynamic responseData) {
    Map<String, dynamic> vData = responseData["vData"];
    late int lenOfYear;
    for (var i in vData.keys) {
      lenOfYear = vData[i].length;
      break;
    }

    List<String> listOfFpnAmt = [responseData["FpnAmt"].toString()];
    List<String> listOfFpnAmtWord = [responseData["FpnAmtWord"].toString()];

    for (int k = 1; k < lenOfYear; k++) {
      listOfFpnAmt.add("&nbsp;");
      listOfFpnAmtWord.add("&nbsp;");
    }

    vData["FpnAmt"] = listOfFpnAmt;
    vData["FpnAmtWord"] = listOfFpnAmtWord;

    var returnList = <List<String>>[];

    List<String> tcoRowKeys = [
      "OneTimeCost",
      "AppCost",
      "SwLicense",
      "SwEnhancement",
      "SwImplementation",
      "OnsiteSupport",
      "DataCenterNonTco",
      "NwEquipmentNonTco",
      "SecurityNonTco",
      "PTesting",
      "HwOther",
      "InfraCost",
      "Server",
      "Storage",
      "NwEquipment",
      "Security",
      "InfraSwLicenses",
      "InfraSwImplementation",
      "InfraHwImplementation",
      "TotalCashOutflow",
      "TotalNonCashOutflow",
      "TotalOneTimeCost",
      "RecurCost",
      "SwAMC",
      "HwAMC",
      "ProfCharges",
      "OutsourcingExp",
      "FM",
      "FMRepairMaintenance",
      "DCKTBandwidth",
      "SwSubscription",
      "Membership",
      "ImplementationAmt",
      "LeasingCharges",
      "InfraSwAMC",
      "InfraHwAMC",
      "DataCenter",
      "DCKTBandwidthTco",
      "ProfChargesTco",
      "SwSubscriptionTco",
      "TotalRecurringCost",
      "TotalCost",
      "ContingencyCost",
      "GrandTotal",
      "FpnAmt",
      "FpnAmtWord"
    ];

    Map<String, String> tcoRowKeysMapping = {
      "OneTimeCost": "OneTimeCost",
      "AppCost": "1) ApplicationCost",
      "SwLicense": "1) Software License Cost",
      "SwEnhancement": "2) Software Enhancement Cost",
      "SwImplementation": "3) Software Implementation Cost",
      "OnsiteSupport": "4) Vendor Onsite Support Cost/Professional Cost",
      "DataCenterNonTco": "5) Data Center(Non TCO)",
      "NwEquipmentNonTco": "6) Network Equipment(Non TCO)",
      "SecurityNonTco": "7) Security(Non TCO)",
      "PTesting": "8) Performance Testing",
      "HwOther": "9) Any Other Hardware Cost",
      "InfraCost": "2) Infrastructure Cost",
      "Server": "1) Server",
      "Storage": "2) Storage",
      "NwEquipment": "3) Network Equipment(Non TCO)",
      "Security": "4) Security",
      "InfraSwLicenses": "5) Infrastructure Software Licenses",
      "InfraSwImplementation": "6) Infrastructure Software Implementation",
      "InfraHwImplementation": "7) Infrastructure Hardware Implementation",
      "TotalCashOutflow": "3) Total One Time Cost Outflow (3 = 1+2)",
      "TotalNonCashOutflow": "4) ELA - ULA (Non Cash Outflow)",
      "TotalOneTimeCost": "A) Total One Time Cost (A = 3+4)",
      "RecurCost": "Recurring Cost / Revenue Costs",
      "SwAMC": "1) Software AMC",
      "HwAMC": "2) Hardware AMC",
      "ProfCharges": "3) Professional Charges",
      "OutsourcingExp": "4) IT Outsourcing Expense",
      "FM": "5) FM",
      "FMRepairMaintenance": "6) FM Repairs and Maintenance",
      "DCKTBandwidth": "7) DCKT(Bandwidth Cost)",
      "SwSubscription": "8) Software Subscription",
      "Membership": "9) Membership Subscription",
      "ImplementationAmt": "10) Implementation Amount",
      "LeasingCharges": "11) Leasing Charges",
      "InfraSwAMC": "12) Infrastructure Software AMC",
      "InfraHwAMC": "13) Infrastructure Hardware AMC",
      "DataCenter": "14) Data Center",
      "DCKTBandwidthTco": "15) DCKT(Bnadwidth - TCO)",
      "ProfChargesTco": "16) Professional Charges - TCO",
      "SwSubscriptionTco": "17) Software Subscription - TCO",
      "TotalRecurringCost": "B) Total Recurring Cost",
      "TotalCost": "C) Total Cost(C = A+B)",
      "ContingencyCost":
          "D) Contingency Amount for any increase in cost during project",
      "GrandTotal": "E) Total cost including contingency amount (E = C+D)",
      "FpnAmt": "FPN Amount (In Rupees)",
      "FpnAmtWord": "FPN Amount In Words (In Rupees)"
    };
    print("coming till here");
    for (String i in tcoRowKeys) {
      var subList = <String>[];
      //print("coming in for loop" + i);

      if (i == "OneTimeCost" ||
          i == "AppCost" ||
          i == "InfraCost" ||
          i == "RecurCost") {
        subList.add(tcoRowKeysMapping[i]!);
        for (int yearNum = 0; yearNum < lenOfYear; yearNum++) {
          subList.add("&nbsp;");
        }
      }

      if (vData.containsKey(i)) {
        String? value = tcoRowKeysMapping[i];
        subList.add(value!);

        for (String j in vData[i]) {
          subList.add(j);
        }
        //print(subList);

      }
      returnList.add(subList);
    }

    //print(returnList);
    for (var list in returnList) {
      finalString += "<tr>";
      if (list[0] == "OneTimeCost" ||
          list[0] == "Recurring Cost / Revenue Costs") {
        print(list);
        finalString +=
            '''<th style="background:#33D1FF; text-align:center;" >''' +
                list[0] +
                '''</th>''';
        for (int a = 1; a < list.length; a++) {
          finalString +=
              '''<td style="background:#33D1FF; text-align:right;">''' +
                  list[a] +
                  '''</td>''';
        }
      } else {
        //     "TotalRecurringCost": "B) Total Recurring Cost",
        // "TotalCost": "C) Total Cost(C = A+B)",
        // "ContingencyCost":
        // "D) Contingency Amount for any increase in cost during project",
        // "GrandTotal": "E) Total cost including contingency amount (E = C+D)",
        // "FpnAmt": "FPN Amount (In Rupees)",
        // "FpnAmtWord": "FPN Amount In Words (In Rupees)"
        //padding-left: 30px;
        if (list[0] == "1) ApplicationCost" ||
            list[0] == "2) Infrastructure Cost" ||
            list[0] == "3) Total One Time Cost Outflow (3 = 1+2)" ||
            list[0] == "4) ELA - ULA (Non Cash Outflow)" ||
            list[0] == "A) Total One Time Cost (A = 3+4)" ||
            list[0] == "B) Total Recurring Cost" ||
            list[0] == "C) Total Cost(C = A+B)" ||
            list[0] ==
                "D) Contingency Amount for any increase in cost during project" ||
            list[0] == "E) Total cost including contingency amount (E = C+D)" ||
            list[0] == "FPN Amount (In Rupees)" ||
            list[0] == "FPN Amount In Words (In Rupees)") {
          finalString += '''<th style="background:#eee; text-align:left;" >''' +
              list[0] +
              '''</th>''';

          for (int b = 1; b < list.length; b++) {
            finalString +=
                '''<td style="background:#eee; text-align:right;"> <b> ''' +
                    list[b] +
                    ''' </b></td>''';
          }
        } else {
          finalString +=
              '''<th style="background:#eee; font-weight: normal; padding-left: 50px; text-align:left;" >''' +
                  list[0] +
                  ''''</th>''';

          for (int c = 1; c < list.length; c++) {
            finalString +=
                '''<td style="background:#eee; text-align:right;"> ''' +
                    list[c] +
                    '''</td>''';
          }
        }
      }

      // finalString += "<tr>";
      // for (int itemIndex = 0; itemIndex < list.length; itemIndex++) {
      //   if (itemIndex == 0) {
      //     if (list[itemIndex] == "OneTimeCost" ||
      //         list[itemIndex] == "Recurring Cost / Revenue Costs") {
      //       finalString +=
      //           '''<th style="background:#33D1FF; text-align:left;" >''' +
      //               list[itemIndex] +
      //               "</th>";
      //     } else {
      //       finalString +=
      //           '''<th style="background:#eee; text-align:left;" >''' +
      //               list[itemIndex] +
      //               "</th>";
      //     }
      //   }
      //   else {
      //     // if(list[0] == "OneTimeCost" || list[0] == "Recurring Cost / Revenue Costs"){
      //     //   finalString +=
      //     // }
      //
      //     finalString += "<td>" + list[itemIndex] + "</td>";
      //   }
      // }
      // finalString += "</tr>";
      finalString += '''</tr>''';
    }
    //print(finalString);
    return finalString;

    // Add your function code here!
  }

  ///////////////////////////////////////////////////////////////////////////////////////////

//   final htmlString = ''' <!DOCTYPE html>
// <html>
// <head>
// <meta name="viewport" content="width=device-width, initial-scale=1">
// <style>
// .tableFixHead          { overflow: auto; height: 100px; width: 240px; }
// .tableFixHead thead th { position: sticky; top: 0; z-index: 2; background:#339FFF;}
// .tableFixHead tbody th { position: sticky; left: 0; z-index: 1;}
// .tableFixHead thead td {position: sticky; left:0; top: 0; z-index: 3; background:#339FFF; }
//
// /* Just common table stuff. Really. */
// table  { border-collapse: collapse; width: 100%; border: 1px solid black;}
// th, td { padding: 8px 16px; white-space: nowrap; border: 1px solid black;
//   border-collapse: collapse}
// td {background:#eee;}
// </style>
// </head>
// <body>
// <div class="tableFixHead">
//   <table>
//     <thead>
//       <tr><td>Total Expenditure Cost</td> <th>TH 1</th><th>TH 2</th></tr>
//     </thead>
//     <tbody>
//             <tr><th>Foo</th><td>Some long text lorem ipsum</td><td>Dolor sit amet</td></tr>
//             <tr><th>Bar</th><td>B1</td><td>B2</td></tr>
//             <tr><th>Baz</th><td>C1</td><td>C2</td></tr>
//             <tr><th>Fuz</th><td>D1</td><td>D2</td></tr>
//             <tr><th>Zup</th><td>E1</td><td>E2</td></tr>
//     </tbody>
//   </table>
// </div>
// </body>
// </html>
//  ''';

  late WebViewController controller;

  String getTCOHeaderData(dynamic tcoDetailResponse) {
    int lenOfSubList = 0;
    dynamic vData = tcoDetailResponse["vData"];
    var listOfYear = <String>[];
    String scrollableHeaderString = '''<th> Total Amount </th> ''';

    //listOfYear.add("Total Expenditure Cost");

    listOfYear.add("Total Amount");

    const String year = "Year";

    for (var k in vData.keys) {
      lenOfSubList = vData[k].length;
      break;
    }

    for (int i = 1; i < lenOfSubList; i++) {
      scrollableHeaderString =
          scrollableHeaderString + "<th>" + year + i.toString() + "</th>";
    }

    return scrollableHeaderString;
  }

  void loadLocalHtml(responseData) {
    var htmlString = ''' <!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.tableFixHead          { overflow: auto; height: 400px; width: 700px; }
.tableFixHead thead th { position: sticky; white-space:nowrap ; top: 0; z-index: 2; background:#339FFF;}
.tableFixHead tbody th { position: sticky;  left: 0; z-index: 1;}
.tableFixHead thead td {  position: sticky;  left:0; top: 0; z-index: 3; background:#339FFF; }

/* Just common table stuff. Really. */
table  { border-collapse: collapse; width: 100%; border: 1px solid black;}
th, td { padding: 8px 16px;  border: 1px solid black;
  }
td {background:#eee;}
</style>
</head>
<body>
<div class="tableFixHead">
  <table>
    <thead>
      <tr><td style="text-align:center; height:40px; width:350px; font-size:14; "><b>Total Expenditure Cost </b></td> ''' +
        getTCOHeaderData(responseData) +
        '''</tr>
    </thead>
    <tbody>
            ''' +
        getTcoTableData(responseData) +
        '''
            </tbody>
            
  </table>
</div>
</body>
</html>
 ''';
    print(htmlString);

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
          loadLocalHtml(widget.responseData);
        });
  }
}
