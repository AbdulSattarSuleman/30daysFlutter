// ignore_for_file: prefer_const_constructors

import 'package:day3/core/store.dart';
import 'package:day3/pages/cart_page.dart';
import 'package:day3/pages/homepage.dart';
import 'package:day3/pages/login_page.dart';
import 'package:day3/utils/routes.dart';
import 'package:day3/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homePage,
      routes: {
        MyRoutes.homePage: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartPage: (context) => CartPage(),
      },
    );
  }
}
