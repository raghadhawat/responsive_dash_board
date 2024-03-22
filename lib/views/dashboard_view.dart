import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/widgets/adaptive_layout_widget.dart';
import 'package:rsponsive_dashbaord/widgets/dashboard_desktop_layout.dart';
import 'package:rsponsive_dashbaord/widgets/dashboard_mobile_layout.dart';
import 'package:rsponsive_dashbaord/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffAAAAAA),
              leading: const Icon(Icons.menu),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
