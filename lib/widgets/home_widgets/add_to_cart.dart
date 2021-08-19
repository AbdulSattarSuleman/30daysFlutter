import 'package:day3/models/cart.dart';
import 'package:day3/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
        onPressed: () {
          // isAdded = isAdded.toggle();
          if (!isInCart) {
            // isInCart = !isInCart;
            isInCart = isInCart.toggle();
            final _catalog = CatalogModel();

            _cart.catalog = _catalog;

            _cart.add(widget.catalog);
            setState(() {});
          }
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all(StadiumBorder()),
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor)),
        child:
            isInCart ? Icon(Icons.done) : Icon(Icons.add_shopping_cart_sharp));
  }
}
