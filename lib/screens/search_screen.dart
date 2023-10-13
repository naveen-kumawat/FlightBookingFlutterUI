import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mybook/utils/app_layout.dart';
import 'package:mybook/utils/app_styles.dart';
import 'package:mybook/widgets/double_text_widget.dart';
import 'package:mybook/widgets/icon_text_widget.dart';
import 'package:mybook/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(context, 20),
            vertical: AppLayout.getHeight(context, 20)),
        children: [
          Gap(AppLayout.getHeight(context, 40)),
          Text(
            "What are\nyou looking for ?",
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(context, 35)),
          ),
          Gap(AppLayout.getHeight(context, 20)),
          const TicketTabs(firstTab: "Airline Ticket", secondTab: 'Hotels'),
          Gap(AppLayout.getHeight(context, 25)),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          Gap(AppLayout.getHeight(context, 15)),
          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          Gap(AppLayout.getHeight(context, 25)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(context, 15),
                horizontal: AppLayout.getHeight(context, 15)),
            decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius:
                    BorderRadius.circular(AppLayout.getHeight(context, 10))),
            child: Center(
                child: Text('Find Ticket',
                    style: Styles.textStyle.copyWith(
                        color: Colors.white,
                        fontSize: AppLayout.getWidth(context, 20)))),
          ),
          Gap(AppLayout.getHeight(context, 40)),
          const AppDoubleTextWidget(
              bigText: "Upcoming Flight", smallText: "View all"),
          Gap(AppLayout.getHeight(context, 15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(context, 400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(context, 15),
                    vertical: AppLayout.getHeight(context, 15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(context, 20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(context, 190),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(context, 12)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/fly.jpg"))),
                    ),
                    Gap(AppLayout.getHeight(context, 12)),
                    Text(
                      "30% discount on the early booking of flight, Don't miss. ",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(context, 200),
                        decoration: BoxDecoration(
                            color: const Color(0xFF3AB8B8),
                            borderRadius: BorderRadius.circular(
                                AppLayout.getHeight(context, 18))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(context, 15),
                            horizontal: AppLayout.getHeight(context, 15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount on\nAll bookings",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(context, 10)),
                            Text(
                              "To grab the offer register and book tickets fastly.",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(
                                AppLayout.getHeight(context, 30)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: const Color(0xFF189999)),
                                color: Colors.transparent),
                          )),
                    ],
                  ),
                  Gap(AppLayout.getHeight(context, 10)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(context, 190),
                    decoration: BoxDecoration(
                        color: const Color(0xFFEC6545),
                        borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(context, 18))),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(context, 15),
                        horizontal: AppLayout.getHeight(context, 15)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.emoji_emotions_rounded,
                            color: Colors.yellowAccent,
                          ),
                          Gap(AppLayout.getHeight(context, 10)),
                          Text(
                            "Thank You \n for Visiting app ",
                            textAlign: TextAlign.center,
                            style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
