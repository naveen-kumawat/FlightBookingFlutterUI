import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(context, 12), horizontal: AppLayout.getHeight(context, 12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(context, 10))
      ),
      child: Row(
        children: [
          Icon(icon,color: const Color(0xFFBFC2DF),),
          Gap(AppLayout.getWidth(context, 10)),
          Text(text, style: Styles.textStyle,)
        ],
      ),
    );
  }
}
