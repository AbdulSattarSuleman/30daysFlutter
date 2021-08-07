import 'package:day3/pages/login_page.dart';
import 'package:day3/utils/routes.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main(){
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      initialRoute: MyRoutes.LoginRoute,
      routes: {
        MyRoutes.HomePage: (context)=> HomePage(),
        MyRoutes.LoginRoute:(context)=> LoginPage(),
      },
    );
  }
}