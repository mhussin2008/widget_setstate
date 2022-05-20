import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class MyNewPie extends StatelessWidget {
  final dMap;
  final double percent;
  //final Function(double newVal) updateVal;

   MyNewPie({Key? key, required this.percent, this.dMap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    dMap['Dart']=percent*10;
    return PieChart(
      chartRadius: 100,
        dataMap: dMap,

    );
  }
}
