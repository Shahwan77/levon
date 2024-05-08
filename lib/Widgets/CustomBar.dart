import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Data/BarData.dart';

class CustomBar extends StatelessWidget {
  final List<dynamic> weeklySummary;

  const CustomBar({Key? key, required this.weeklySummary}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    BarData myBarData = BarData(
      sunAmount: weeklySummary[0],
      monAmount: weeklySummary[1],
      friAmount: weeklySummary[2],
      tueAmount: weeklySummary[3],
      wedAmount: weeklySummary[4],
      thurAmount: weeklySummary[5],
      satAmount: weeklySummary[6],
    );
    myBarData.initializeBarData();

    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(
              showTitles: true,getTitlesWidget:getBottomTitles )),
        ),
        barGroups: myBarData.barData
            .map(
              (data) => BarChartGroupData(
            x: data.x,
            barRods: [
              BarChartRodData(
                  toY: data.y, color: Colors.purpleAccent.shade100,
                  width: 10,
                  backDrawRodData: BackgroundBarChartRodData(
                    show: true,
                    toY: 100,
                    color: Colors.grey.shade200,
                  )
              ),
            ],
          ),
        )
            .toList(),
      ),
    );
  }
}
Widget getBottomTitles(double value , TitleMeta meta){
  const style = TextStyle(
    color: Colors.grey,
    fontSize: 13,
  );
  Widget text;
  switch (value.toInt()){
    case 0:
      text = const Text('Sat',style: style,);
      break;
    case 1:
      text = const Text('Sun',style: style,);
      break;
    case 2:
      text = const Text('Mon',style: style,);
      break;
    case 3:
      text = const Text('Tue',style: style,);
      break;
    case 4:
      text = const Text('Wed',style: style,);
      break;
    case 5:
      text = const Text('Thu',style: style,);
      break;
    case 6:
      text = const Text('Fri',style: style,);
      break;
    default:
      text = const Text('',style: style,);
      break;
  }
  return SideTitleWidget(child:text, axisSide: meta.axisSide);
}