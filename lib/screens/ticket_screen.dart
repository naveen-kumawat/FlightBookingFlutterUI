import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mybook/screens/ticket_view.dart';
import 'package:mybook/utils/app_info_list.dart';
import 'package:mybook/utils/app_layout.dart';
import 'package:mybook/utils/app_styles.dart';
import 'package:mybook/widgets/column_layout.dart';
import 'package:mybook/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(context, 20),
                vertical: AppLayout.getHeight(context, 20)),
            children: [
              Gap(AppLayout.getHeight(context, 30)),
              Text(
                'Tickets',
                style: Styles.headLineStyle1.copyWith(fontSize: 30),
              ),
              Gap(AppLayout.getHeight(context, 20)),
              const TicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(context, 20)),
              Container(
                padding:
                    EdgeInsets.only(left: AppLayout.getHeight(context, 15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "Alkit Vijay",
                          secondText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "5964 6986321",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: "0058 693 1489",
                          secondText: "E-Ticket Number",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnLayout(
                          firstText: "D89PQ42",
                          secondText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    const AppLayoutBuilderWidget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(context, 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/rupay.png',
                                  scale: 42,
                                ),
                                Text(
                                  " **** 4286",
                                  style: Styles.headLineStyle3,
                                )
                              ],
                            ),
                            const Gap(5),
                            Text(
                              "Payment Method",
                              style: Styles.headLineStyle4,
                            )
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "₹5690.56",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              /*bar code*/
              Container(
                margin: EdgeInsets.only(
                    left: AppLayout.getHeight(context, 15),
                    right: AppLayout.getHeight(context, 15)),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(context, 20),
                    bottom: AppLayout.getHeight(context, 20)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(AppLayout.getHeight(context, 21)),
                        bottomRight:
                            Radius.circular(AppLayout.getHeight(context, 21)))),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(context, 15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(context, 15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(context, 30)),
              Container(
                padding:
                    EdgeInsets.only(left: AppLayout.getHeight(context, 15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(context, 22),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(context, 22),
            top: AppLayout.getHeight(context, 295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
