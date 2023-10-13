import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mybook/utils/app_layout.dart';
import 'package:mybook/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
        width: size.width * 0.6,
        height: AppLayout.getHeight(context,340),
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(context, 15), vertical: AppLayout.getHeight(context, 17)),
        margin: const EdgeInsets.only(right: 17, top: 5),
        decoration: BoxDecoration(
            color: Styles.primaryColor,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                blurRadius: 2,
                spreadRadius: 1,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: AppLayout.getHeight(context, 180),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Styles.primaryColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"),
                  )),
            ),
            const Gap(10),
            Text(hotel['place'],
                style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor)),
            const Gap(5),
            Text(hotel['destination'],
                style: Styles.headLineStyle3.copyWith(color: Colors.white)),
            const Gap(10),
            Text("₹ ${hotel['price']}/Night",
                style: Styles.headLineStyle1.copyWith(color: Colors.white)),
            const Gap(2),
            const Text("( Included all tex and charges )",style: TextStyle(fontSize: 10,color: Colors.white),),
          ],
        ));
  }
}
