void main() {
  // generate a list of integers
  var scores = [1, 2, 3, 4, 5];

  // for loop
  for (var j = 0; j < 5; j++) {
    print(j);
  }

  // "for of" in JS
  for (var score in scores) {
    print(score);
  }

  bool isLooping = true;
  while (isLooping) {
    print("I'm looping");
    isLooping = false;
  }

  bool isRunning = true;
  do {
    print('first running');
    print('second running');
    isRunning = false;
  } while (isRunning);
}
