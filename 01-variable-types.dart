void main() {
  var name = 'mario'; // when you know the type
  print(name);

  // immutable values
  final age =
      25; // runtime constant (Use final keyword when you know the value in compile-time)
  print(age);

  // immutable values
  const isOpen = true; // compile-time constant
  print(isOpen);

  print(age + 10);
  print(age - 10);
  print(age * 10);
  print(age / 10);
  print(age % 10);

  print("my name is $name");
}
