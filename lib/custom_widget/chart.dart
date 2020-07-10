import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:submission_flutter/model/data.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: charts.BarChart(series, animate: true),
            )
          ],
        ),
      ),
    );
  }
}

var data = [
  Data("Apr 1", 5),
  Data("Apr 2", 9),
  Data("Apr 3", 8),
  Data("Apr 4", 14),
  Data("Apr 5", 10),
  Data("Apr 6", 15),
  Data("Apr 7", 18),
];

var series = [
  charts.Series(
    id: "Data",
    data: data,
    domainFn: (Data data,_) => data.week,
    measureFn: (Data data,_) => data.cases,
    colorFn: (Data data,_) => data.color
  )
];