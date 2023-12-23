class ListNode {
  int value;
  ListNode? next;

  ListNode(this.value);
}

class LinkedList {
  ListNode? head;

  void append(int value) {
    ListNode newNode = ListNode(value);
    if (head == null) {
      head = newNode;
    } else {
      ListNode? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
    }
  }

  void printValues() {
    ListNode? current = head;
    while (current != null) {
      print(current.value);
      current = current.next;
    }
  }
}

void printValuesInReverse(ListNode? node) {
  if (node == null) return;

  printValuesInReverse(node.next);
  print(node.value);
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.append(1);
  linkedList.append(2);
  linkedList.append(3);
  linkedList.append(4);

  print("Original Linked List:");
  linkedList.printValues();
  print("Linked List in Reverse:");
  printValuesInReverse(linkedList.head);
}
