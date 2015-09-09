def gavin_each(array)
  i = 0                      # => 0
  while i < array.length do  # => true, true, true, true, false
    yield array[i]           # => nil, nil, nil, nil

    i = i + 1  # => 1, 2, 3, 4
  end          # => nil

  array  # => [5, 19, 42, 12]
end

array = [5,19,42,12]  # => [5, 19, 42, 12]

#array.each do |number|
array.each do |number|                    # => [5, 19, 42, 12]
  number                                  # => 5, 19, 42, 12
  puts "The number is #{number.inspect}"  # => nil, nil, nil, nil
end                                       # => [5, 19, 42, 12]

gavin_each(array) do |number|
  number                                  # => 5, 19, 42, 12
  puts "The number is #{number.inspect}"  # => nil, nil, nil, nil
end                                       # => [5, 19, 42, 12]

# >> The number is 5
# >> The number is 19
# >> The number is 42
# >> The number is 12
# >> The number is 5
# >> The number is 19
# >> The number is 42
# >> The number is 1
