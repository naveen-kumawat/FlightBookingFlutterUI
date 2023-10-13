import 'package:flutter/material.dart';
import 'package:mybook/screens/bottom_bar.dart';
import 'package:mybook/utils/app_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: primary,
        ),
        home: const BottomBar(),
      ),
    );
  }
}
