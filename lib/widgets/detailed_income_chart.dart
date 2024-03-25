import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/utlis/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? null : 1.5,
            radius: activeIndex == 0 ? 60 : 50,
            value: 40,
            title: activeIndex == 0 ? 'Design service' : '40%',
            color: const Color(0xff208CC8),
            titleStyle: AppStyles.styleMedium16
                .copyWith(color: activeIndex == 0 ? null : Colors.white)),
        PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? null : 2.2,
            radius: activeIndex == 1 ? 60 : 50,
            value: 25,
            title: activeIndex == 1 ? 'Design product' : '25%',
            color: const Color(0xff4EB7F2),
            titleStyle: AppStyles.styleMedium16
                .copyWith(color: activeIndex == 1 ? null : Colors.white)),
        PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? null : 1.4,
            radius: activeIndex == 2 ? 60 : 50,
            value: 20,
            title: activeIndex == 2 ? 'Product royalti' : '20%',
            color: const Color(0xff064061),
            titleStyle: AppStyles.styleMedium16
                .copyWith(color: activeIndex == 2 ? null : Colors.white)),
        PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? null : 1.4,
            radius: activeIndex == 3 ? 60 : 50,
            value: 22,
            title: activeIndex == 3 ? 'Other' : '22%',
            color: const Color(0xffE2DECD),
            titleStyle: AppStyles.styleMedium16
                .copyWith(color: activeIndex == 3 ? null : Colors.white)),
      ],
    );
  }
}
