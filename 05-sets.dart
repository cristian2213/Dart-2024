void main() {
  // Sets are unordered and don't allow duplicate values. this is the same that javascript's sets
  var names = {"mario", "luigi", "peach"}; // this's a set

  Set<String> moreNames = {
    "mario",
    "luigi",
    "peach",
  };

  moreNames.add("mario"); // didn't add

  print(names);
  print(moreNames);
}
