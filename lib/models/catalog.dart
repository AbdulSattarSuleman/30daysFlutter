class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
  final products = [
    Item(
        id: "p-01",
        name: "hero Product",
        desc: "Lorem ipsum dolor sit amet",
        price: 100,
        color: "#53505a",
        image: "http://placehold.it/940x300/999/CCC")
  ];
}
