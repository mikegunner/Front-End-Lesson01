def reverse!(array) 
  (1..(array.size)).zip(array.dup).each_with_object(array) do |(num, item), arr|
    arr[-num] = item
  end
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
puts list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
puts list == ["abc"]

list = []
reverse!([]) # => []
puts list == []