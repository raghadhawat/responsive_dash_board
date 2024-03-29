import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/utlis/app_styles.dart';
import 'package:rsponsive_dashbaord/widgets/latest_transaction_list_view.dart';

class LatestTrasaction extends StatelessWidget {
  const LatestTrasaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransactionListView()
      ],
    );
  }
}
