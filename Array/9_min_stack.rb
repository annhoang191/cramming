# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
# Implement MinStack class

class MinStack
  attr_accessor :stack
  def initialize
    @stack = []
  end


  def push val
    stack << val
  end


  def pop
    stack.pop
  end

  def top
    stack.last
  end

  def get_min
    stack.min
  end
end
