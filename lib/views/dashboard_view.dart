import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/widgets/adaptive_layout_widget.dart';
import 'package:rsponsive_dashbaord/widgets/dashboard_desktop_layout.dart';
import 'package:rsponsive_dashbaord/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
