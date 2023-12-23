class Node {
  int value;
  Node? next;

  Node(this.value);
}

class CustomLinkedList {
  Node? head;

  void insert(int value) {
    Node newNode = Node(value);
    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void displayList() {
    Node? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void reverseList(CustomLinkedList customList) {
  Node? previous = null;
  Node? current = customList.head;
  Node? nextNode;

  while (current != null) {
    nextNode = current.next;
    current.next = previous;
    previous = current;
    current = nextNode;
  }

  customList.head = previous;
}

void main() {
  CustomLinkedList myList = CustomLinkedList();
  myList.insert(1);
  myList.insert(2);
  myList.insert(3);
  myList.insert(4);

  print("Original List:");
  myList.displayList();
  reverseList(myList);
  print("Reversed List:");
  myList.displayList();
}
