import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/utlis/size_config.dart';
import 'package:rsponsive_dashbaord/widgets/income_chart.dart';
import 'package:rsponsive_dashbaord/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width <= 1750 && width >= SizeConfig.desktop
        ? SizedBox()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails())
            ],
          );
  }
}
