void printReversed(List<int> originalList) {

  List<int> reversedStack = [];

  for (int element in originalList) {
    reversedStack.add(element);
  }

  while (reversedStack.isNotEmpty) {
    print(reversedStack.removeLast());
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  print("Original :");
  print(numbers);
  print("Reversed :");
  printReversed(numbers);
}
