def reverse(arr)
  reversed_array = []
  arr.each do |element|
    reversed_array.unshift(element)
  end
  reversed_array
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
p new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true