class Node
  attr_accessor :value, :next, :previous

  def initialize(element)
    @value = element
    @next = nil
    @previous = nil
  end

  def insert_before(node)
    @next = node
    if node != nil
      @previous = node.previous
      node.previous = self
    end
  end

  def insert_after(node)
    @previous = node
    if node != nil
      @next = node.next
      node.next = self
    end
  end

  def remove_before
    @previous = nil
  end

  def remove_after
    @next = nil
  end
end
