// ignore_for_file: null_closures

class CatalogModel {
  static final catModel = CatalogModel._internal();

  CatalogModel._internal();

  factory CatalogModel() => catModel;
  static List<Item> items = [];

  //Get Item By Id
  Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  //Get Item By Position
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
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

  //For Named Constructor<String [Id] Data type, dynamic value data type>
  // Decode Data Create Class from Map
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map['id'], //Dictionary id get value
        name: map['name'],
        desc: map['desc'],
        price: map['price'],
        color: map['color'],
        image: map['image']);
  }
  //Create Map From Class for Encode data
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
