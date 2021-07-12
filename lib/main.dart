// ignore_for_file: use_key_in_widget_constructors, prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:onboarding_screen/page/onboarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Onboarding Screen';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: true,
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: OnBoardingPage(),
      );
}
