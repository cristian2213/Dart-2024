void main() {
  var name = 'mario'; // when you know the type
  print(name);

  // immutable values
  final age =
      25; // runtime constant (the value of this constant is known when the code runs)
  print(age);

  // immutable values
  const isOpen =
      true; // compile-time constant (the value of this constant is known when the code is compiled)
  print(isOpen);

  print(age + 10);
  print(age - 10);
  print(age * 10);
  print(age / 10);
  print(age % 10);

  print("my name is $name");
}
