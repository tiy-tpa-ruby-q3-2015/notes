array = [5,4,9,1,2]
new_array = []
array.each { |n| new_array.unshift(n); }
p new_array

array = [5,4,9,1,2]
array.size.downto(0) do |i|
  puts array[i]
end

