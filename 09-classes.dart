void main() {
  var noodles = MenuItem('veg noodles', 9.99);
  var pizza = Pizza(["mushrooms", "peppers"], 'veg volcano', 15.99);

  print(noodles);
  print(pizza);
}

class MenuItem {
  String title;
  double price;

  MenuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }

  // to override the default toString method which all objects have
  @override
  String toString() {
    return this.format();
  }
}

class Pizza extends MenuItem {
  List<String> toppings;

  // shortcut
  Pizza(
    this.toppings,
    super.title,
    super.price,
  );

  // long way
  // Pizza(this.toppings, String title, double price) : super(title, price);

// to override a function
  @override
  String format() {
    var formattedToppings = "Contains:";

    for (final t in toppings) {
      formattedToppings = "$formattedToppings $t";
    }

    return "$title -> $price \n$formattedToppings";
  }
}
