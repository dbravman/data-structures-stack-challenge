require_relative "linked_list"

class Stack < LinkedList

  def push(element)
    insert_last(element)
  end

  def pop
    element = top
    remove_last
    element
  end

  def top
    return nil if empty?
    get(size-1)
  end

  def empty?
    size == 0
  end
end
