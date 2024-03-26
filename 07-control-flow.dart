void main() {
  // generate a list of integers
  var scores = [50, 75, 20, 99, 100, 30];

  // normal "for of"
  for (int score in scores) {
    if (score > 5) {
      print("the score is: $score");
    } else {
      print("score not night enough");
    }
  }

  // "for of" with where(filter in JS)
  for (int score in scores.where((s) => s > 50)) {
    print("Where: the score is: $score");
  }
}
