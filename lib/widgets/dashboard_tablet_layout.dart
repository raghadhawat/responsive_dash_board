import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rsponsive_dashbaord/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:rsponsive_dashbaord/widgets/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

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
        Expanded(flex: 3, child: AllExpensessAndQuickInvoiceSection()),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
