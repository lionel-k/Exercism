# Insert and search for numbers in a binary tree.
class Bst
  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(value)
    if value <= @data
      insert_left(value)
    else
      insert_right(value)
    end
  end

  def insert_left(value)
    if @left.nil?
      @left = Bst.new(value)
    else
      @left.insert(value)
    end
  end

  def insert_right(value)
    if @right.nil?
      @right = Bst.new(value)
    else
      @right.insert(value)
    end
  end

  def each
  end

end

module BookKeeping
  VERSION = 1
end
