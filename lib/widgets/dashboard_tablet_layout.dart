import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rsponsive_dashbaord/widgets/custom_drawer.dart';
import 'package:rsponsive_dashbaord/widgets/dashboard_mobile_layout.dart';

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
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: DashboardMobileLayout(),
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
