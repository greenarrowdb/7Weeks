require_relative 'tree'

# First bullet
puts "First Bullet:"
numbers_array = [
  1, 2, 3, 4,
  5, 6, 7, 8,
  9, 10, 11, 12,
  13, 14, 15, 16,
]

slice = []
index = 0
numbers_array.each() do |number|
  index += 1
  slice.push(number)
  if index % 4 == 0
    puts "#{slice}"
    slice = []
  end
end

numbers_array.each_slice(4) do |slice|
  puts "#{slice}"
end


# Second bullet
puts "\nSecond Bullet:"

puts Tree

data = {'grandpa' => {'dad' => {'child1' => {}, 'child2' => {} }, 'uncle' => {'child3' => {}, 'child4' => {} } } }
class Tree
  def initialize(name, children=[], data=false)
    if data
      throw 'OH NO!' if data.keys.length != 1
      data.each_pair do |name, value|
        @node_name = name
        @children = []
        value.each do |childName, childItem|
          @children.push(Tree.new(nil, nil, {childName => childItem}))
        end
      end
    else
      super(name, children)
    end
  end
end

puts Tree.new(nil, nil, data)

# Third bullet
puts "\nThird Bullet:"

filename = './Ruby/Day1.rb'

File.open(filename).each do |line|
  print line if /hello/i =~ line
end