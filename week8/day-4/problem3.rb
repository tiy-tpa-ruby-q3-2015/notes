def palindrome_finder(array)
  array.select { |word| word == word.reverse }
end

p palindrome_finder(["foo", "bar", "bazab", "Gavin", "barrab", "test"])
