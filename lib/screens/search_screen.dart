import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticketing_app/utils/app_layout.dart';
import 'package:ticketing_app/utils/app_styles.dart';
import 'package:ticketing_app/widgets/box_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            'What are \n you looking for?',
            style:
                Styles.headlineStyle.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  /*airline tickets*/
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(AppLayout.getHeight(50)),
                        ),
                        color: Colors.white),
                    child: Center(child: Text('Airline Tickets')),
                  ),
                  Gap(3),
                  /*hotels*/
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(AppLayout.getHeight(50)),
                        ),
                        color: Colors.transparent),
                    child: Center(child: Text('Hotels')),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(50),
                  ),
                  color: const Color(0xFFF4F6FD)),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          BoxText("Departure", Icon(Icons.flight_takeoff_rounded)),
          Gap(AppLayout.getHeight(25)),
          BoxText("Arrival", Icon(Icons.flight_land_rounded)),
          Gap(AppLayout.getHeight(45)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(12),
                horizontal: AppLayout.getWidth(12)),
            decoration: BoxDecoration(
                color: Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
            child: Center(
                child: Text(
              "find tickets",
              style:
                  Styles.textStyle.copyWith(color: Colors.white, fontSize: 26),
            )),
          ),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Flights",
                style: Styles.headlineStyle2,
              ),
              InkWell(
                onTap: () {
                  print("You are tapped");
                },
                child: Text("view all",
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor)),
              )
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ]),
                child: Column(children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(12)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/sit.jpg'))),
                        ),
                        Gap(AppLayout.getHeight(12)),
                        Text(
                          "20% discount on early booking of the flight. Dont miss out on the chance!",
                          style: Styles.headlineStyle2,
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(180),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getHeight(15)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount \n for survey",
                                style: Styles.headlineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "Take a survey about our services and get discount",
                                style: Styles.headlineStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    fontSize: 20),
                              )
                            ]),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18, color: Color(0xFF189999)),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(180),
                    decoration: BoxDecoration(
                        color: Color(0xFFEC6545),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18))),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getHeight(15)),
                    child: Column(children: [
                      Text(
                        "Take Love",
                        style: Styles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      Gap(AppLayout.getHeight(5)),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: '😍', style: TextStyle(fontSize: 28)),
                        TextSpan(text: '🥰', style: TextStyle(fontSize: 40)),
                        TextSpan(text: '😘', style: TextStyle(fontSize: 28))
                      ]))
                    ]),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
