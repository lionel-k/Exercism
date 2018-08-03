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

# four = Bst.new 4
# four.insert 2
# four.insert 6
# four.insert 1
# four.insert 3
# four.insert 7
# four.insert 5
# puts four.data #assert_equal 4,
# puts four.left.data # assert_equal 2,
# puts four.left.left.data # assert_equal 1,
# puts four.left.right.data # assert_equal 3,
# puts four.right.data # assert_equal 6,
# puts four.right.left.data #assert_equal 5,
# puts four.right.right.data #assert_equal 7,


# all_data = []
# four.each { |data| all_data << data }
# print all_data
