import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rsponsive_dashbaord/utlis/app_styles.dart';
import 'package:rsponsive_dashbaord/widgets/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All Expense",
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const RangeOptions()
      ],
    );
  }
}
