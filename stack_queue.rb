require 'my_stack'

class StackQueue

  def initialize(arr)
    @stack1 = MyStack.new(arr)
    @stack2 = MyStack.new
    @max = nil
  end

  def enqueue(element)
    @stack1.push(element)
    @stack1
  end

  def dequeue
    init_pop = @stack2.length - 1
    init_pop.times do
      @stack2.push(@stack1.pop)
    end

    ret_val = @stack1.pop

    ret_pop = @stack2.length
    ret_pop.times do
      @stack1.push(@stack2.pop)
    end
    ret_val
  end

  def size
    @stack1.size
  end

  def empty?
    @stack1.empty?
  end

end
