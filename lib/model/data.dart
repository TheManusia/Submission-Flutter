import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class Data {
  final String week;
  final int cases;
  final charts.Color color = charts.ColorUtil.fromDartColor(Colors.redAccent);

  Data(this.week, this.cases);
}