(1..1000).each do |number|
  case
    when number % 5 == 0 && number % 7 == 0
      puts "Iron Yard"
    when number % 5 == 0
      puts "Iron"
    when number % 7 == 0
      puts "Yard"
    else
      puts number
  end
end

(1..1000).each do |number|
  if number % 5 == 0 && number % 7 == 0
    puts "Iron Yard"
  else
    if number % 5 == 0
      puts "Iron"
    else
      if number % 7 == 0
        puts "Yard"
      else
        puts number
      end
    end
  end
end

