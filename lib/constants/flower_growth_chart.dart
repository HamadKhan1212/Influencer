import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}

class FlowerGrowthChart extends StatefulWidget {
  const FlowerGrowthChart({Key? key}) : super(key: key);

  @override
  State<FlowerGrowthChart> createState() => _FlowerGrowthChartState();
}

class _FlowerGrowthChartState extends State<FlowerGrowthChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        height: 200,
        child: SfCartesianChart(
            title: ChartTitle(
                alignment: ChartAlignment.near,
                text: 'Follower Growth',
                textStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),

            // Enables the legend
            legend: Legend(isVisible: false),

            // Initialize category axis
            primaryXAxis: CategoryAxis(
              majorGridLines: const MajorGridLines(
                width: 0,
              ),
            ),
            series: <ChartSeries>[
              // Initialize line series
              LineSeries<ChartData, String>(
                dataSource: [
                  // Bind data source
                  ChartData('Mar', 02),
                  ChartData('Apr', 08),
                  ChartData('May', 03),
                  ChartData('Jun', 5),
                  ChartData('Jul', 9),
                  ChartData('Aug', 5),
                  ChartData('Sep', 14),
                ],
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                color: Colors.red,
                width: 3.5,
              ),
            ]));
  }
}
