
# O(n) -- linear
def sum(array)
  total = 0
  array.each do |element|
    total = total + element
  end
  total
end

puts sum([4,5,6,42])

# O(n * n)
def print_game_board(width, height)
  width.times do
    height.times do
      print "."
    end
    print "\n"
  end
end

# O(log n)

print_game_board(9,9)
