import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/utlis/app_styles.dart';
import 'package:rsponsive_dashbaord/widgets/latest_transaction_list_view.dart';

class LatestTrasaction extends StatelessWidget {
  const LatestTrasaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 16,
        ),
        LatestTransactionListView()
      ],
    );
  }
}
