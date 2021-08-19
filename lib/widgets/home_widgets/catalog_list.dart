//CatalogList
// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:day3/models/cart.dart';
import 'package:day3/models/catalog.dart';
import 'package:day3/pages/home_detail_page.dart';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeDetaiPage(catalog: catalog))),
          child: CatalogItem(
            catalog: catalog,
          ),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: (catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.bold.lg.color(context.theme.accentColor).make(),
            // catalog.name.text.bold.lg.color(MyTheme.darkBlueish).make(),
            catalog.desc.text.make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}"
                    .text
                    .bold
                    .color(context.theme.accentColor)
                    .make(),
                _AddToCart(catalog: catalog)
              ],
            ).pOnly(right: 8)
          ],
        ))
      ],
    )).color(context.cardColor).roundedSM.square(140).make().py16();
  }
}

class _AddToCart extends StatefulWidget {
  final Item catalog;
  const _AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          isAdded = !isAdded;
          // isAdded = isAdded.toggle();

          final _catalog = CatalogModel();
          final _cart = CartModel();
          _cart.catalog = _catalog;
          
          _cart.add(widget.catalog);
          setState(() {});
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all(StadiumBorder()),
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor)),
        child: isAdded ? Icon(Icons.done) : Text("Buy"));
  }
}
