import 'dart:convert';
import 'package:day3/models/catalog.dart';
import 'package:day3/widgets/drawer.dart';
import 'package:day3/widgets/item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      drawer: MyDrawer(),
      body: (CatalogModel.items.isNotEmpty)
          ? GridView.builder(
              itemCount: CatalogModel.items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final item = CatalogModel.items[index];
                return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    clipBehavior: Clip.antiAlias,
                    child: GridTile(
                      header: Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          item.name,
                          style: TextStyle(color: Colors.white),
                        ),
                        decoration: BoxDecoration(color: Colors.deepPurple),
                      ),
                      child: Image.network(item.image),
                      footer: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.black),
                          child: Text(
                            item.price.toString(),
                            style: TextStyle(color: Colors.white),
                          )),
                    ));
              },
            )
          : Center(
              //Progrss Bar
              child: CircularProgressIndicator(),
            ),
    );
  }
}
