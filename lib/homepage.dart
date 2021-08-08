import 'package:day3/utils/routes.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text'),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Text('Welcome To Dea Trust'),
          ),
        ));
  }

  
}
