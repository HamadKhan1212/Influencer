import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  final List<ChartData> chartData = [
    ChartData(day: 'Mon', value: 5),
    ChartData(day: 'Tue', value: 3),
    ChartData(day: 'Wed', value: 7),
    ChartData(day: 'Thu', value: 2),
    ChartData(day: 'Fri', value: 6),
    ChartData(day: 'Sat', value: 4),
    ChartData(day: 'Sun', value: 8),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: SfCartesianChart(
          title: ChartTitle(
              alignment: ChartAlignment.near,
              textStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              text: 'Gamified Earnings Chart'),
          primaryXAxis: CategoryAxis(),
          series: <ChartSeries<ChartData, String>>[
            ColumnSeries<ChartData, String>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.day,
                yValueMapper: (ChartData data, _) => data.value,
                color: const Color(0xff1CAB8E),
                borderRadius: BorderRadius.circular(5)),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  final String day;
  final int value;

  ChartData({required this.day, required this.value});
}
