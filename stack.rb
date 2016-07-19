require_relative "linked_list"

class Stack
  def initialize
    @stack = LinkedList.new
  end

  def push(element)
    @stack.insert_last(element)
  end

  def pop
    element = top
    @stack.remove_last
    element
  end

  def top
    return nil if @stack.empty?
    @stack.get(@stack.size-1)
  end

  def empty?
    @stack.size == 0
  end
end
