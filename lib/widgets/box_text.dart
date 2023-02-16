import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketing_app/utils/app_layout.dart';
import 'package:ticketing_app/utils/app_styles.dart';

class BoxText extends StatelessWidget {
  const BoxText(this.arrivalOrDeparture, this.icon, {super.key});
  final String arrivalOrDeparture;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getWidth(12), horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
      child: Row(children: [
        icon,
        Gap(AppLayout.getWidth(10)),
        Text(
          arrivalOrDeparture,
          style: Styles.textStyle,
        )
      ]),
    );
  }
}
