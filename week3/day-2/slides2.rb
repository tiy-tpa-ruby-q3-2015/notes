movies = ["The Karate Kid", "Weird Science", "Better Off Dead",                                  # => "Better Off Dead"
          "Real Science", "Hello from Paris","The Princess Bride",  "Ferris Bueller's Day Off"]  # => ["The Karate Kid", "Weird Science", "Better Off Dead", "Real Science", "Hello from Paris", "The Princess Bride", "Ferris Bueller's Day Off"]

# # Find and print the name of the movie with the classic catch phrase '... two dollars ...'
#
# # Hint, we wouldn't write this either, still too verbose
# def gavin_find(movies, name_of_movie)
#   movies.each do |movie|               # => ["The Karate Kid", "Weird Science", "Better Off Dead", "Real Science", "The Princess Bride", "Ferris Bueller's Day Off"]
#     movie                              # => "The Karate Kid", "Weird Science", "Better Off Dead"
#     if movie == name_of_movie          # => false, false, true
#       return movie                     # => "Better Off Dead"
#     end
#   end
# end
#
# # We would never write this in Ruby, yuck, too verbose
# def gavin_find_verbose(movies, name_of_movie)
#   i = 0
#   while i < movies.length
#     movies[i]
#     if movies[i] == name_of_movie
#       puts "Found your movie at index #{i} and it is #{movies[i]}"
#       break
#     end
#
#     i = i + 1
#   end
# end
#
# the_found_movie = gavin_find(movies, "Better Off Dead")  # => "Better Off Dead"
# puts "Found a movie! #{the_found_movie}"                 # => nil

# search
found_person = @people.____ { |person| ____ }

# delete
@people.____ { |person| ____ }

@people.each do |person|
  if person._____
    _____
  end
end

movies = movies.select { |movie| movie.include?("S") }.                  # => ["Weird Science", "Real Science"]
                reject { |movie| movie.include?("Weird") }.              # => ["Real Science"]
                map { |movie| movie.downcase }.                          # => ["real science"]
                map { |movie| movie.reverse }                            # => ["ecneics laer"]
p movies                                                                 # => ["ecneics laer"]
the_found_movie_from_ruby = movies.select { |movie| movie.length > 12 }  # => []
puts "Found a movie from ruby #{the_found_movie_from_ruby}"              # => nil

# >> ["ecneics laer"]
# >> Found a movie from ruby []
