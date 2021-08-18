

import 'package:day3/models/catalog.dart';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetaiPage extends StatelessWidget {
  final Item catalog;

  const HomeDetaiPage({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(catalog.name),
      ),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor),
                    ),
                    child: "Buy".text.lg.make())
                .wh(100, 30)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: (catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h40(context),
            Expanded(
                child: VxArc(
              height: 20,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: context.cardColor,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl3
                          .color(context.accentColor)
                          .make(),
                      catalog.desc.text.xl.make(),
                      "His his light gathered his yet. Passion birth his holy the that be had, ear from it a his ne to to, cell had did shrine these resolved bacchanals now, now love blazon artless lurked in, gathered happy longdeserted pride if, within scarce massy bacchanals in and sadness where, and."
                          .text
                          .make()
                          .p16()
                    ],
                  ).py32(),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
