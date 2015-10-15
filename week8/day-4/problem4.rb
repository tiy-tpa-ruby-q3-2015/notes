def sum_digits(number)
  number.to_s.chars.map(&:to_i).inject(:+)

  total = 0
  number.to_s.chars.each do |char|
    total = total + char.to_i
  end

  total
end

p sum_digits(1572)

