code = lambda do |number|
  p number
end

loud_code = lambda do |number|
  puts "#{number}!!!!!!!!!"
end

code.call(42,100)

def say_first_5_numbers(how_to_say)
  how_to_say.call(1)
  how_to_say.call(2)
  how_to_say.call(3)
  how_to_say.call(4)
  how_to_say.call(5)
end

# say_first_5_numbers(code)
