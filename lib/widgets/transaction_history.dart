import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/utlis/app_styles.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20,
            ),
            Text(
              'See all',
              style: AppStyles.styleMedium16
                  .copyWith(color: const Color(0xff4EB7F2)),
            )
          ],
        )
      ],
    );
  }
}
