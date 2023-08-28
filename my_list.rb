require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*elements)
    @list = elements
  end

  def each(&block)
    @list.each(&block)
  end
end

# rubocop:disable all
# Create our list
puts list = MyList.new(1, 2, 3, 4) # => <MyList: @list=[1, 2, 3, 4]>

# Test #all?
puts(list.all? { |e| e < 5 }) # => true
puts(list.all? { |e| e > 5 }) # => false

# Test #any?
puts(list.any? { |e| e == 2 }) # => true
puts(list.any? { |e| e == 5 }) # => false

# Test #filter
print(list.filter { |e| e.even? }) # => [2, 4]
# rubocop:enable all