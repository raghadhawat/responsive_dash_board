import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/widgets/all_expensess.dart';
import 'package:rsponsive_dashbaord/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          AllExpensess(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice()
        ],
      ),
    );
  }
}
