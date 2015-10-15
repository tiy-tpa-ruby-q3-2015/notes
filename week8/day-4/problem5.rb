# Write a method to find all the numbers between 2 and 1000 that are squares

(2..Math.sqrt(1000)).each do |number|
  puts number * number
end

(2..1000).each do |number|
  if Math.sqrt(number) == Math.sqrt(number).to_i
    puts number
  end
end

