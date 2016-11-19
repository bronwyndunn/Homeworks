class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queue
  def initialize
    @queue = []
  end

  def unqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue.dup
  end
end


class Map
  def initialize
    @map = []
  end

  def assign(key, value)
    pair_index = @map.index {|pair| pair[0] == key}
    pair_index ? @map.index[pair_index][1] = value : @map << [key, value]
  end

  def lookup(key)
    @map.each {|pair| return pair[1] if pair[0] == key }
  end

  def remove(key)
    @map.remove! {|pair| pair[0] == key}
  end

  def show
    deep_dup(@map)
  end

  def deep_dup(arr)
    arr.map {|el| el.is_a?(Array) ? deep_dup(el) : el}
  end
end
