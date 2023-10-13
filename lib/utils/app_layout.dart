import 'package:flutter/cupertino.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeight(BuildContext context, double pixels) {
    double screenHeight = getScreenHeight(context);
    double x = screenHeight / pixels;
    return screenHeight / x;
  }
  static double getWidth(BuildContext context, double pixels) {
    double screenWidth = getScreenWidth(context);
    double x = screenWidth / pixels;
    return screenWidth/ x;
  }
}
