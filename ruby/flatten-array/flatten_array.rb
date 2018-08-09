# Take a nested list
# and return a single flattened list with all values except nil/null.
class FlattenArray
  def self.flatten(nested_list)
    nested_list.flatten.reject(&:nil?)
  end
end

module BookKeeping
  VERSION = 1
end
