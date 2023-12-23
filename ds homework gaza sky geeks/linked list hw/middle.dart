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

ListNode? findMiddleNode(ListNode? head) {
  if (head == null) return null;

  ListNode? slow = head;
  ListNode? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  return slow;
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.append(1);
  linkedList.append(2);
  linkedList.append(3);
  linkedList.append(4);

  print("Original Linked List:");
  linkedList.printValues();

  ListNode? middleNode = findMiddleNode(linkedList.head);
  print("Middle Node: ${middleNode?.value}");
}
