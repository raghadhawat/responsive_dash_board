import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rsponsive_dashbaord/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:rsponsive_dashbaord/widgets/custom_drawer.dart';
import 'package:rsponsive_dashbaord/widgets/income_section.dart';
import 'package:rsponsive_dashbaord/widgets/my_cards_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensessAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            MyCardsAndTransactionHistorySection(),
            SizedBox(
              height: 24,
            ),
            Expanded(child: IncomeSection())
          ],
        ))
      ],
    );
  }
}
