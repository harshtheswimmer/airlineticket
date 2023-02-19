import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketing_app/utils/app_layout.dart';
import 'package:ticketing_app/utils/app_styles.dart';
import 'package:ticketing_app/utils/data.dart';
import 'package:ticketing_app/widgets/dotted_line.dart';
import 'package:ticketing_app/widgets/ticket_column.dart';
import 'package:ticketing_app/widgets/ticket_tabs.dart';
import 'package:ticketing_app/widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headlineStyle.copyWith(fontSize: 32),
              ),
              Gap(AppLayout.getHeight(20)),
              TicketTabs('Upcoming', 'Previous'),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticketList[0], isColor: true),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: Colors.white,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketColumn(
                        firstText: "Flutter DB",
                        secondText: "Passanger",
                        alignment: CrossAxisAlignment.start,
                      ),
                      TicketColumn(
                        firstText: "5221 345678",
                        secondText: "Passport",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    color: Colors.white,
                    child: Column(
                        children: [DottedLine(isColor: true, sections: 10)]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketColumn(
                        firstText: "0055 444 77147",
                        secondText: "Number of E-ticket",
                        alignment: CrossAxisAlignment.start,
                      ),
                      TicketColumn(
                        firstText: "B2SG28",
                        secondText: "Booking Code",
                        alignment: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    color: Colors.white,
                    child: Column(
                        children: [DottedLine(isColor: true, sections: 10)]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 15,
                              ),
                              Text(
                                "*** 2562",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Gap(5),
                          Text(
                            "Payment Method",
                            style: Styles.headlineStyle4,
                          )
                        ],
                      ),
                      TicketColumn(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end)
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    color: Colors.white,
                    child: Column(
                        children: [DottedLine(isColor: true, sections: 10)]),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  /* Bar Code */
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        data: 'https://github.com/harshtheswimmer',
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(28),
            top: AppLayout.getHeight(334),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(28),
            top: AppLayout.getHeight(334),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
