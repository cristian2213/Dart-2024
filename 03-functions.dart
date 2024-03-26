void main() {
  // what you pass to the function are called PARAMETERS.
  String greet(String name, int age) {
    return "Hi, my name is $name and I am $age";
  }

  // when you call the function, the parameters are called  ARGUMENTS.
  greet("mario", 12);

  // named PARAMETERS
  String greet2({String? name, required int age}) {
    return "$name and $age";
  }

  greet2(name: "soo", age: 23);
}
