import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

List<String> getTCOHeaderData(dynamic tcoDetailResponse) {
  int lenOfSubList = 0;

  var listOfYear = <String>[];

  //listOfYear.add("Total Expenditure Cost");

  listOfYear.add("Total Amount");

  const String year = "Year";

  for (var k in tcoDetailResponse.keys) {
    lenOfSubList = tcoDetailResponse[k].length;

    break;
  }

  for (int i = 1; i < lenOfSubList; i++) {
    listOfYear.add(year + i.toString());
  }

  return listOfYear;
}

List<dynamic> getTableDataForTcoDetails(dynamic tcoDetailsResponse) {
  var listOfList =
      <List<String>>[]; //  [  ["cloudCharges",0,0,0,0,0,0], [] , .....]

  //var subList = <String>[];

  for (var k in tcoDetailsResponse.keys) {
    var subList = <String>[];

    subList.add(k); // ["cloudCharges",]

    //subList = responseData[k];

    //final List<String> strs = responseData[k].map((e) => e.toString()).toList();

    for (var item in tcoDetailsResponse[k]) {
      subList.add(item.toString()); //  ["cloudCharges",0,0,0,0,0,0]

    }

    //subList.add(k);

    //subList.add("0");

    //subList.add("0");

    listOfList.add(subList);
  }

  return listOfList;
}

String updateLocalState(
  String? ctrl,
  String? value,
) {
  if (value!.isNotEmpty) {
    return ctrl = value;
  }
  return '';
}

String getSelectedFieldValue(
  String empCodeValue,
  String empNameValue,
) {
  // Add your function code here!
  String returnString = empCodeValue + " - " + empNameValue;
  return returnString;
}

List<dynamic> getTableDataForTcoDetailsCopy(dynamic tcoDetailsResponse) {
  // {"cloudCharges" : [0,0,0,0,0,0], ...... }
  List<String> TcoRowKeys = [
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

  Map<String, String> TcoRowKeysValueMapping = {
    "OneTimeCost": "OneTimeCost",
    "AppCost": "1) ApplicationCost",
    "SwLicense": "1) Software License Cost",
    "SwEnhancement": "2) Software Enhancement Cost",
    "SwImplementation ": "3) Software Implementation Cost",
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

  var listOfList =
      <List<String>>[]; //  [  ["cloudCharges",0,0,0,0,0,0], [] , .....]

  //var subList = <String>[];

  for (var k in tcoDetailsResponse.keys) {
    var subList = <String>[];

    subList.add(k); // ["cloudCharges",]

    //subList = responseData[k];

    //final List<String> strs = responseData[k].map((e) => e.toString()).toList();

    for (var item in tcoDetailsResponse[k]) {
      subList.add(item.toString()); //  ["cloudCharges",0,0,0,0,0,0]

    }

    //subList.add(k);

    //subList.add("0");

    //subList.add("0");

    listOfList.add(subList);
  }

  return listOfList;
}

List<dynamic> getTableDataOfTco(dynamic responseData) {
  Map<String, dynamic> vData = responseData["vData"];
  late int lenOfYear;
  for (var i in vData.keys) {
    lenOfYear = vData[i].length;
    break;
  }

  List<String> listOfFpnAmt = [responseData["FpnAmt"].toString()];
  List<String> listOfFpnAmtWord = [responseData["FpnAmtWord"].toString()];

  for (int k = 1; k < lenOfYear; k++) {
    listOfFpnAmt.add(" ");
    listOfFpnAmtWord.add(" ");
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

    /**if (i == "OneTimeCost" ||
        i == "AppCost" ||
        i == "InfraCost" ||
        i == "RecurCost") {
      subList.add(tcoRowKeysMapping[i]!);
    } */

    if (vData.containsKey(i)) {
      String? value = tcoRowKeysMapping[i];
      //subList.add(value!);

      for (String j in vData[i]) {
        subList.add(j);
      }
      //print(returnList);

    }
    returnList.add(subList);
  }

  print(returnList);
  return returnList;
  // Add your function code here!
}

List<String> getFixedColumnData(dynamic responseData) {
  Map<String, dynamic> vData = responseData["vData"];
  late int lenOfYear;
  for (var i in vData.keys) {
    lenOfYear = vData[i].length;
    break;
  }

  List<String> listOfFpnAmt = [responseData["FpnAmt"].toString()];
  List<String> listOfFpnAmtWord = [responseData["FpnAmtWord"].toString()];

  for (int k = 1; k < lenOfYear; k++) {
    listOfFpnAmt.add(" ");
    listOfFpnAmtWord.add(" ");
  }

  vData["FpnAmt"] = listOfFpnAmt;
  vData["FpnAmtWord"] = listOfFpnAmtWord;

  var returnList = <String>[];

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

    /**if (i == "OneTimeCost" ||
        i == "AppCost" ||
        i == "InfraCost" ||
        i == "RecurCost") {
      subList.add(tcoRowKeysMapping[i]!);
    } */

    if (vData.containsKey(i)) {
      String? value = tcoRowKeysMapping[i];
      returnList.add(value!);

      /** for (String j in vData[i]) {
        subList.add(j);
      } */
      //print(returnList);

    }
  }

  print(returnList);
  return returnList;
  // Add your function code here!
}
