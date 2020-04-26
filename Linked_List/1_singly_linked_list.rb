# Implement singly linked list

class Node
  attr_accessor :val, :next

  def initialize val
    @val = val
    @next = nil
  end
end

class SinglyLinkedList
  attr_accessor :head
  def initialize
    @head = nil
  end

  def get index
    i = 0
    head = @head

    while !head.nil? && i < index
      return -1 if head.nil?
      head = head.next
      i += 1
    end

    return -1 if head.nil?
    return head.val
  end

  def add_at_head val
    new_head = Node.new val
    new_head.next = @head
    @head = new_head
  end

  def add_at_index index, val
    new_node = Node.new val

    if index == 0
      new_node.next = @head
      @head = new_node
    end

    i = 0
    head = @head
    while i < index - 1
      return if head.nil?
      head = head.next
      i += 1
    end
    return if head.nil?
    new_node.next = head.next
    head.next = new_node
  end

  def delete_at_index index
    return if @head.nil?

    @head = @head.next if index == 0

    i = 0
    head = @head
    while i < index - 1
      return if head.nil?
      head = head.next
      i += 1
    end
    return if head.next.nil?
    head.next = head.next.next
  end
end
