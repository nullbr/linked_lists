class LinkedList
  def initialize
    @head_node = nil
    @tail_node = nil
  end

  # head returns the first node in the list
  def head
    next_value = @head_node.next_node.nil? ? nil : @head_node.next_node.value
    [@head_node.value, next_value]
  end

  # tail returns the last node in the list
  def tail
    next_value = @tail_node.next_node.nil? ? nil : @tail_node.next_node.value
    [@tail_node.value, next_value]
  end

  # append(value) adds a new node containing value to the end of the list
  def append(val)
    new_node = Node.new(val)

    @tail_node.next_node = new_node if @tail_node

    @head_node ||= new_node
    @tail_node = new_node
  end

  # prepend(value) adds a new node containing value to the start of the list
  def prepend(val)
    new_node = Node.new(val)

    new_node.next_node = @head_node
    @head_node = new_node
  end

  # size returns the total number of nodes in the list
  def size(current_node = @head_node, count = 0)
    if current_node == @tail_node
      current_node.nil? ? (return count) : (return count + 1)
    end

    size(current_node.next_node, count + 1)
  end

  # at(index) returns the node at the given index
  def at(index, current_node = @head_node, count = 0)
    if count == index
      next_value = nil
      next_value = current_node.next_node.value unless current_node.next_node.nil?

      return [current_node.value, next_value]
    end

    at(index, current_node.next_node, count + 1)
  end

  # pop removes the last element from the list
  def pop; end

  # contains?(value) returns true if the passed in value is in the list and otherwise returns false.
  def contains?; end

  # find(value) returns the index of the node containing value, or nil if not found.
  def find(val); end

  # to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console.
  # The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s(current_node = @head_node)
    return if current_node == @tail_node_node

    puts "Node:#{current_node.value} Next:#{current_node.next_node.nil? ? 'null' : current_node.next_node.value}"
    to_s(current_node.next_node)
  end

  # EXTRA CREDIT

  # insert_at(value, index) that inserts a new node with the provided value at the given index.
  def insert_at(val, index); end

  # remove_at(index) that removes the node at the given index.
  def remove_at(index); end

  # Extra Credit Tip: When you insert or remove a node, consider how it will affect the existing nodes.
  # Some of the nodes will need their #next_node link updated.
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

linked_list = LinkedList.new

puts 'Print linked list size when initialized'
puts linked_list.size

puts ''
puts 'Add nodes 1 and 2 to the linked list'
linked_list.append(1)
linked_list.append(2)

puts 'Print linked list items'
linked_list.to_s

puts ''
puts 'Add node 3 and print items'
linked_list.prepend(3)
linked_list.to_s

puts ''
puts 'Ptint new size'
puts linked_list.size

puts ''
puts 'Print head and tail node values'
p linked_list.head
p linked_list.tail

puts ''
puts 'Print linked list item at index 0 and 2'
p linked_list.at(0)
p linked_list.at(1)