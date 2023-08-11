import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarbonIntensityData {
  final String shortName;
  final int forecast;
  final String index;

  CarbonIntensityData(
      {required this.shortName, required this.forecast, required this.index});

  factory CarbonIntensityData.fromJson(Map<String, dynamic> json) {
    return CarbonIntensityData(
      shortName: json['shortname'],
      forecast: json['data'][0]['intensity']['forecast'],
      index: json['data'][0]['intensity']['index'],
    );
  }
}
