message = "Hello World"  # => "Hello World"

cost = 42        # => 42
other_cost = 12  # => 12

if (cost == 42)                     # => true
  puts "Yes, the cost was correct"  # => nil
  puts message                      # => nil
else
  puts "The cost was incorrect"
end                                 # => nil

array = [1,2,3]  # => [1, 2, 3]

# initializer  condition         incrementer
array.each do |i|  # => [1, 2, 3]
  i * cost         # => 42, 84, 126
end                # => [1, 2, 3]

i = 0;  # => 0

while (true) do         # => true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true
 puts(i)                # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
 i += 2                 # => 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44
 if i > cost            # => false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true
   puts "Breaking out because i is #{i}"
   break
 end
 puts "About to loop"
end                     # => nil
puts "Out of the loop"  # => nil

# >> Yes, the cost was correct
# >> Hello World
# >> 0
# >> 2
# >> 4
# >> 6
# >> 8
# >> 10
# >> 12
# >> 14
# >> 16
# >> 18
# >> 20
# >> 22
# >> 24
# >> 26
# >> 28
# >> 30
# >> 32
# >> 34
# >> 36
# >> 38
# >> 40
# >> 42
# >> Out of the loop
