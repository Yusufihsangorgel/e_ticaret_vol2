import 'package:animated_theme_switcher/animated_theme_switcher.dart';

import 'package:e_ticaret_vol2/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'Screens/profileScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThemeProvider(
        initTheme: kDarkTheme,
        child: Builder(
          builder: (context) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeProvider.of(context),
              home: ProfileScreen(),
            );
          },
        ),
      ),
    );
  }
}
