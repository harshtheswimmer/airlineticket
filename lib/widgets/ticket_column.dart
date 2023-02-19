import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketing_app/utils/app_layout.dart';
import 'package:ticketing_app/utils/app_styles.dart';

class TicketColumn extends StatelessWidget {
  const TicketColumn(
      {required this.firstText,
      required this.secondText,
      required this.alignment});
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: Styles.headlineStyle3
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Gap(AppLayout.getHeight(5)),
        Text(secondText, style: Styles.headlineStyle3),
      ],
    );
  }
}
