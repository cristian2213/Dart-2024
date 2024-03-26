void main() {
  var noodles = MenuItem('veg noodles', 9.99);
  var pizza = Pizza(["mushrooms", "peppers"], 'veg volcano', 15.99);

  var roast = MenuItem('veggie roast dinner', 12.49);
  var kebab = MenuItem('plant kebab', 7.49);

  var foods =
      Collection<MenuItem>('Menu Items', [noodles, pizza, roast, kebab]);

  var random = foods.randomItem();
  print(random);
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }

  @override
  String toString() {
    return this.format();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  Pizza(
    this.toppings,
    super.title,
    super.price,
  );

  @override
  String format() {
    var formattedToppings = "Contains:";

    for (final t in toppings) {
      formattedToppings = "$formattedToppings $t";
    }

    return "$title -> $price \n$formattedToppings";
  }
}

class Collection<T> {
  String name;
  List<T> data;

  Collection(this.name, this.data);

  T randomItem() {
    this.data.shuffle();

    return this.data[0];
  }
}
