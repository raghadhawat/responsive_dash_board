import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/widgets/custom_background_container.dart';
import 'package:rsponsive_dashbaord/widgets/my_card_section.dart';
import 'package:rsponsive_dashbaord/widgets/transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
