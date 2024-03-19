import 'package:flutter/material.dart';
import 'package:rsponsive_dashbaord/widgets/custom_background_container.dart';
import 'package:rsponsive_dashbaord/widgets/latest_transaction.dart';
import 'package:rsponsive_dashbaord/widgets/quick_invoice_form.dart';
import 'package:rsponsive_dashbaord/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTrasaction(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
