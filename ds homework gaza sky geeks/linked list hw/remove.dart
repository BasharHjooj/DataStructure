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

void removeOccurrences(CustomLinkedList linkedList, int target) {
  Node? current = linkedList.head;
  Node? prev = null;

  while (current != null) {
    if (current.value == target) {
      if (prev == null) {
        linkedList.head = current.next;
      } else {
        prev.next = current.next;
      }
    } else {
      prev = current;
    }

    current = current.next;
  }
}

void main() {
  CustomLinkedList myList = CustomLinkedList();
  myList.insert(1);
  myList.insert(2);
  myList.insert(3);
  myList.insert(2);
  myList.insert(4);

  print("Original List:");
  myList.displayList();
  removeOccurrences(myList, 2);
  print("List after removing all occurrences of 2:");
  myList.displayList();
}
