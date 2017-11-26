class LinkedList
  attr_accessor :head, :tail

  def initialize(value = nil)
    @head = Node.new(value)
    @tail = @head
  end

  # Returns the first node for which the block is not false.
  def detect
    node = @head
    until node.next_node.nil?
      return node if yield(node) == true
      node = node.next_node
    end
  end

  # Adds a new node to the end of the list
  def append(value = nil)
    if @tail.equal? @head
      @head.next_node = Node.new(value)
      @tail = @head.next_node
    else
      @tail.next_node = Node.new(value)
      @tail = @tail.next_node
    end
  end

  # Adds a new node to the start of the list
  def prepend(value = nil)
    @head = Node.new(value, @head)
  end

  # Returns the total number of nodes in the list
  def size(node = @head, count = 1)
    return count if node.next_node.nil?
    count += 1
    size(node.next_node, count)
  end

  # Returns the node at the given index
  def at(index)
    node = @head
    (1..index).each do
      node = node.next_node
      break if node.nil?
    end
    node
  end

  # Removes and returns the last element from the list
  def pop
    old_tail = @tail
    new_tail = detect { |node| node.next_node.equal? @tail }
    new_tail.next_node = nil
    @tail = new_tail
    old_tail
  end

  # Returns true if the passed value is in the list and otherwise return false
  def contains?(data)
    return true if detect { |node| node.value == data }
    false
  end

  # Returns the index of the node containing data, or nil if not found
  def find(data)
    detect { |node| node.value == data }
  end

  # Represent LinkedList as strings
  def to_s(node = @head, string = "")
    return string if node.next_node.nil? # base case
    string = "(#{@head.value})" if node.equal? @head
    string + " -> (#{node.next_node.value})" + to_s(node.next_node)
  end
end

class Node
  attr_accessor :value, :next_node
  def initialize(value =  nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
