class LinkedList
  # append(value) adds a new node containing value to the end of the list
  def append(val); end

  # prepend(value) adds a new node containing value to the start of the list
  def prepend(val); end

  # size returns the total number of nodes in the list
  def size; end

  # head returns the first node in the list
  def head; end

  # tail returns the last node in the list
  def tail; end

  # at(index) returns the node at the given index
  def at(index); end

  # pop removes the last element from the list
  def pop; end

  # contains?(value) returns true if the passed in value is in the list and otherwise returns false.
  def contains?; end

  # find(value) returns the index of the node containing value, or nil if not found.
  def find(val); end

  # to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s; end

  # EXTRA CREDIT

  # insert_at(value, index) that inserts a new node with the provided value at the given index.
  def insert_at(val, index); end

  # remove_at(index) that removes the node at the given index.
  def remove_at(index); end

  # Extra Credit Tip: When you insert or remove a node, consider how it will affect the existing nodes.
  # Some of the nodes will need their #next_node link updated.
end

class Node
  def value(val = nil); end

  def next_node(node = nil); end
end
