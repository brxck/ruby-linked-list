# ruby-linked-list

This is a solution for the [The Odin Project: Linked Lists.](https://www.theodinproject.com/courses/ruby-programming/lessons/linked-lists)

Implementation of linked lists in Ruby.

`linked-list_enum.rb` takes advantage of the Enumerable mixin.

# Usage

- `#append` adds a new node to the end of the list
- `#prepend` adds a new node to the start of the list
- `#size` returns the total number of nodes in the list
- `#head` returns the first node in the list
- `#tail` returns the last node in the list
- `#at(index)` returns the node at the given index
- `#pop` removes the last element from the list
- `#contains?` returns true if the passed in value is in the list and otherwise returns false.
- `#find(data)` returns the index of the node containing data, or nil if not found.
- `#to_s` represent LinkedList as strings: ( data ) -> ( data ) -> ( data ) -> nil
- `#insert_at(index)` inserts the node at the given index.
- `#remove_at(index)` removes the node at the given index. 
