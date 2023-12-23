bool areParenthesesBalanced(String expression) {
  List<String> parenthesesStack = [];

  for (int i = 0; i < expression.length; i++) {
    String currentChar = expression[i];

    if (currentChar == '(') {
      parenthesesStack.add(currentChar);
    } else if (currentChar == ')') {
      if (parenthesesStack.isEmpty || parenthesesStack.removeLast() != '(') {
        return false; // Unbalanced parentheses
      }
    }
  }

  return parenthesesStack.isEmpty; // If stack is empty, parentheses are balanced
}

void main() {
  String expression1 = "(a + b)) * (c - d)";
  String expression2 = "((a + b) * c - d)";

  print("$expression1 is balanced: ${areParenthesesBalanced(expression1)}");
  print("$expression2 is balanced: ${areParenthesesBalanced(expression2)}");
}
