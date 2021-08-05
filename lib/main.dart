import 'package:day3/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/homepage.dart';

void main(){
  runApp(
    MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // textTheme: GoogleFonts.interTextTheme()
      ),
      initialRoute: "/login",
      routes: { 
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}