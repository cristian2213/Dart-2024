import 'dart:math' as math;

/* 
The Fisher-Yates shuffle algorithm, also known as the Knuth shuffle, is an algorithm used for shuffling the elements of an array or a list randomly. It was designed by Ronald Fisher and Frank Yates in the 1930s and later popularized by Donald Knuth in his book "The Art of Computer Programming".

The algorithm works by iteratively selecting a random element from the portion of the array that has not been shuffled yet and swapping it with the current element being processed. This process is repeated for each element in the array until all elements have been shuffled.

Here's how the Fisher-Yates shuffle algorithm works in pseudo-code:
  1. Start from the last element of the array and iterate backwards to the first element.
  2. For each element at index i, generate a random index j such that 0 <= j <= i.
  3. Swap the element at index i with the element at index j.
  4. Repeat steps 2-3 for each element from i = n-1 down to i = 1, where n is the length of the array.

*/
void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  //                   0, 1, 2, 3, 4, 5, 6, 7, 8, 9
  var shuffledList = shuffle<int>(numbers);
  print(shuffledList);
}

List<T> shuffle<T>(List<T> array) {
  final listLength = array.length - 1;

  for (var i = listLength; i > 0; i--) {
    var randomIndex = math.Random().nextInt(i + 1);
    var temp = array[i];
    var randomItem = array[randomIndex];
    array[i] = randomItem;
    array[randomIndex] = temp;
  }

  return array;
}
