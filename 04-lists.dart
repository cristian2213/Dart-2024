void main() {
  // This is at the end an array
  List<int> scores = [
    50,
    75,
    20,
    99,
  ];
  print(scores[0]);

  scores.add(100); // add a new value
  scores.remove(20); // remove a value
  scores.removeLast();
  scores.addAll([123, 5453, 566567]);
  scores.shuffle();
  scores.indexOf(123);

  print(scores.length);
  print(scores);

  final conditionalList = [1, 2, if (true == false) 3 else 4];
  print(conditionalList);

  final ternaryList = [1, 2, true == false ? 3 : 4];
  print(ternaryList);
}
