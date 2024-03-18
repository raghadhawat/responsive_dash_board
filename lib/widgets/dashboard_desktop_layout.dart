import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rsponsive_dashbaord/widgets/all_expensess.dart';
import 'package:rsponsive_dashbaord/widgets/custom_drawer.dart';
import 'package:rsponsive_dashbaord/widgets/quick_invoice.dart';

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
          child: Column(
            children: [
              AllExpensess(),
              SizedBox(
                height: 24,
              ),
              QuickInvoice()
            ],
          ),
        ),
      ],
    );
  }
}
