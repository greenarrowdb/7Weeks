require_relative 'tree'

# Second bullet
puts "\nSecond Bullet:"

class Tree
  def self.from_hash(data)
    throw 'OH NO!' if data.keys.length != 1
    name, values = data.first

    children = []
    values.each do |key, value|
      children << Tree.from_hash({key => value})
    end

    return Tree.new(name, children)
  end
end

data = {'grandpa' => {'dad' => {'child1' => {}, 'child2' => {} }, 'uncle' => {'child3' => {}, 'child4' => {} } } }
puts Tree.from_hash(data)
