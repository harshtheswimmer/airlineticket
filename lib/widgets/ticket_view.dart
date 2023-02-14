import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketing_app/utils/app_layout.dart';
import 'package:ticketing_app/widgets/thick_container.dart';

import '../utils/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView(this.ticket, {super.key});
  final Map<String, dynamic> ticket;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //Shows the blue part of the card/ticket
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF526799),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    ThickContainer(),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                              builder: (BuildContext context,
                                      BoxConstraints constraints) =>
                                  Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                          (constraints.constrainWidth() / 6)
                                              .floor(),
                                          (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color:
                                                          Colors.white))))))),
                      Center(
                          child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(Icons.local_airport_rounded,
                                  color: Colors.white)))
                    ])),
                    ThickContainer(),
                    const Spacer(),
                    Text(
                      ticket['to']['code'],
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    )
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(ticket['from']['name'],
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white)),
                    ),
                    Text(
                      ticket['flying_time'],
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white)),
                    ),
                  ],
                )
              ]),
            ),
            //showing the orange part of the card/ticket
            Container(
              color: const Color(0xFFF37B67),
              height: 20,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) =>
                              Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => SizedBox(
                                  width: 5,
                                  height: 1,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white)),
                                )),
                      ),
                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                    ),
                  ),
                ],
              ),
            ),
            //Bottom part of orange card ticket
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket['date'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Gap(5),
                        Text(
                          "Date",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ticket['departure_time'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Gap(5),
                        Text(
                          "Departure Time",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          ticket['number'],
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Gap(5),
                        Text(
                          "Number",
                          style: Styles.headlineStyle4
                              .copyWith(color: Colors.white),
                        )
                      ],
                    )
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
