import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:smart_village/bar_data.dart';

class EducationBarGraph extends StatelessWidget {
  final List eduSummary;
  const EducationBarGraph({super.key, required this.eduSummary});

  @override
  Widget build(BuildContext context) {
    BarData eduBarData = BarData(
        sd: eduSummary[0],
        smp: eduSummary[1],
        sma: eduSummary[2],
        s1: eduSummary[3],
        s2: eduSummary[4]);

    eduBarData.initializeBarData();

    return BarChart(BarChartData(
        maxY: 250,
        minY: 0,
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(sideTitles: SideTitles(
              showTitles: true, getTitlesWidget: getBottomTitles,
            ))
        ),
        barGroups: eduBarData.barData
            .map(
              (data) => BarChartGroupData(x: data.x, barRods: [
                BarChartRodData(
                    toY: data.y,
                    color: Theme.of(context).colorScheme.primary,
                    width: 25,
                    borderRadius: BorderRadius.circular(4),
                    backDrawRodData: BackgroundBarChartRodData(
                      show: true,
                      toY: 250,
                      color: const Color(0xff8d92a4),
                    ))
              ]),
            )
            .toList()));
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const style = TextStyle(color: Colors.grey, fontWeight: FontWeight.bold);

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text("SD", style: style);
      break;
    case 1:
      text = const Text("SMP", style: style);
      break;
    case 2:
      text = const Text("SMA", style: style);
      break;
    case 3:
      text = const Text("S1", style: style);
      break;
    case 4:
      text = const Text("S2", style: style);
      break;
    default:
      text = const Text("", style: style);
      break;
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: text,);
}
