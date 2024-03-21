import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rsponsive_dashbaord/widgets/custom_background_container.dart';
import 'package:rsponsive_dashbaord/widgets/income_chart.dart';
import 'package:rsponsive_dashbaord/widgets/income_details.dart';
import 'package:rsponsive_dashbaord/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                Expanded(child: IncomeDetails())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
