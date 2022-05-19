require_relative 'linked_lists'

# Testing linked list methods
linked_list = LinkedList.new

puts 'Print linked list size when initialized'
puts linked_list.size

puts "\nAdd nodes 1 and 2 to the linked list"
linked_list.append(1)
linked_list.append(2)

puts "\nPrint linked list items"
linked_list.to_s

puts "\nAdd node 3 and print items"
linked_list.prepend(3)
linked_list.to_s

puts "\nPtint new size"
puts linked_list.size

puts "\nPrint head and tail node values"
p linked_list.head
p linked_list.tail

puts "\nPrint linked list item at index 0 and 2"
p linked_list.at(0)
p linked_list.at(1)

puts "\nCheck if list contains a certain value"
p linked_list.contains?(1)
p linked_list.contains?(4)

puts "\nRemove the last element form list with pop"
linked_list.pop
linked_list.to_s

puts "\nFind node value and give its index or nil if none is found"
p linked_list.find(3)
p linked_list.find(1)
p linked_list.find(2)

# Extra Credit
puts "\nInsert a value at a given index"
linked_list.insert_at(4, 1)
linked_list.insert_at(5, 2)
linked_list.insert_at(6, 0)
linked_list.to_s

puts "\nRemove node at a given inxed"
linked_list.remove_at(0)
linked_list.remove_at(3)
linked_list.to_s
