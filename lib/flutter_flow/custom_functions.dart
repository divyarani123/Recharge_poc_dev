import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

List<String>? walletidStringConverter(
  List<dynamic> jsonData,
  String? passParameter,
) {
  List<String>? ids = [];

  List<String> collectingData = jsonData
      .where((e) => e['status'] == 'Active')
      .toList()
      .map((e) => e['id'] as String)
      .toList();
  ids = collectingData;

  return ids;
}

bool? vehicleNumbeValidation(
  String vehicleState,
  List<dynamic> vehicleList,
) {
  var filterVehicle = vehicleList
      .where((element) => element['vehicleno']
          .toString()
          .toLowerCase()
          .contains("${vehicleState.toLowerCase()}"))
      .toList();

  return filterVehicle.length > 0;

  // bool isValid = vehicleList
  //     .toString()
  //     .toLowerCase()
  //     .contains("${vehicleState.toLowerCase()}");
  // return isValid;
}

bool? walletidValidation(
  List<dynamic> walletJsonData,
  String? walletisState,
) {
  bool isValidWalletid = false;

  for (var wallet in walletJsonData) {
    if (wallet['id']
        .toString()
        .toLowerCase()
        .contains(walletisState.toString().toLowerCase())) {
      if (wallet['status'] == 'Active') isValidWalletid = true;
    }
  }

  return isValidWalletid;
}

String? removeHyphan(String? strVal) {
  return strVal!.replaceAll('-', '');
}

List<String> activeAccounts(List<dynamic> bankNamesJsonListData) {
  List<String> activeAccs = [];

  activeAccs = bankNamesJsonListData
      .where(((e) => e["status"] == "Active"))
      .toList()
      .map(((e) => e['acno'] as String))
      .toList();

  return activeAccs;
}
