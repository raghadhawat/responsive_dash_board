import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:rsponsive_dashbaord/widgets/income_section.dart';
import 'package:rsponsive_dashbaord/widgets/my_cards_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardsAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
