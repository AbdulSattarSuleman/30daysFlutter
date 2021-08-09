// ignore_for_file: prefer_const_constructors

import 'package:day3/utils/routes.dart';
import 'package:day3/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Context =? Element = Location
    return Scaffold(
        appBar: AppBar(
          title: Text('Catalog App'),
          centerTitle: true,
        ),
        drawer: MyDrawer(),
        body: Container(
          child: Center(
            child: Text(context.runtimeType.toString()),
          ),
        ));
  }
}
