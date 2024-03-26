void main() {
  // this is a map (is similar to an object in JS), if you want to create a set using the same structure, so you explicitly need to add the set type
  var planets = {};

  // Adding the types explicitly
  Map<String, String> planets2 = {
    "first": "mercury",
    "second": "venus",
    "third": "earth",
    "fourth": "mars",
    "fifth": "jupiter",
  };

  // update value
  planets2["fifth"] = "new value";

  // add new value
  planets2["sixth"] = "uranus";

  // check keys
  print(planets2.containsKey("third"));

  // check values
  print(planets2.containsValue("jupiter"));

  // remove elements
  print(planets2.remove("fifth"));

  // remove with condition
  planets2.removeWhere((key, value) => value != "mars");

  print(planets);
  print(planets2);
}
