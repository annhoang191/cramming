# Linked List

## Concept
- A linear data structure
- All the items in linked list are linked together by the reference field in each element.
- Two types of linked list:
  - Singly linked list
  - Doubly linked list

## Singly linked list
- Each node in a singly linked list contains the value and a reference field to link to the next node
- Ex: `1->3->4`
- Implement
  ```ruby
  class SinglyListNode
    attr_accessor :val, :next
    def initialize val
      @val = val
      @next = nil
    end
  end
  ```

## Time complexity
- Bad for searching: O(n)
- Insertion: O(1)
- Deletion: O(1)
