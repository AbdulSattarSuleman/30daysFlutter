import 'dart:convert';
import 'package:day3/models/catalog.dart';
import 'package:day3/widgets/home_widgets/catalog_header.dart';
import 'package:day3/widgets/home_widgets/catalog_list.dart';
import 'package:day3/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 3));
    final CatalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(CatalogJson);
    var productData = decodedData["products"];
    print(productData);
    //Create List
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creemColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py12().expand()
              else
                CircularProgressIndicator().centered().py16().expand(),
            ],
          ),
        ),
      ),
    );
  }
}