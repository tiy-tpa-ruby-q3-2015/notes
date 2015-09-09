movies = ["The Karate Kid", "Weird Science", "Better Off Dead",              # => "Better Off Dead"
          "Real Science", "The Princess Bride", "Ferris Bueller's Day Off"]  # => ["The Karate Kid", "Weird Science", "Better Off Dead", "Real Science", "The Princess Bride", "Ferris Bueller's Day Off"]

# Show our love for each of these movies by creating a new collection
# with exclamation points on the end

movies.map! { |movie| movie.length }  # => [14, 13, 15, 12, 18, 24]
p movies                              # => [14, 13, 15, 12, 18, 24]
scores = [5, 4, 5, 2]                 # => [5, 4, 5, 2]
total = 0                             # => 0
scores.each do |score|                # => [5, 4, 5, 2]
  total = total + score               # => 5, 9, 14, 16
end                                   # => [5, 4, 5, 2]

puts total             # => nil
scores = [5, 4, 5, 2]  # => [5, 4, 5, 2]

p scores.methods     # => [:inspect, :to_s, :to_a, :to_h, :to_ary, :frozen?, :==, :eql?, :hash, :[], :[]=, :at, :fetch, :first, :last, :concat, :<<, :push, :pop, :shift, :unshift, :insert, :each, :each_index, :reverse_each, :length, :size, :empty?, :find_index, :index, :rindex, :join, :reverse, :reverse!, :rotate, :rotate!, :sort, :sort!, :sort_by!, :collect, :collect!, :map, :map!, :select, :select!, :keep_if, :values_at, :delete, :delete_at, :delete_if, :reject, :reject!, :zip, :transpose, :replace, :clear, :fill, :include?, :<=>, :slice, :slice!, :assoc, :rassoc, :+, :*, :-, :&, :|, :uniq, :uniq!, :compact, :compact!, :flatten, :flatten!, :count, :shuffle!, :shuffle, :sample, :cycle, :permutation, :combination, :repeated_permutation, :repeated_combination, :product, :take, :take_while, :drop, :drop_while, :bsearch, :any?, :pack, :to_json, :entries, :sort_by, :grep, :find, :detect, :find_all, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :all?, :one?, :none?...
class Array
  def total_product
    self.inject(:*)  # => 200
  end
  def sum
    self.inject(:+)  # => 16
  end
end
p scores.methods     # => [:inspect, :to_s, :to_a, :to_h, :to_ary, :frozen?, :==, :eql?, :hash, :[], :[]=, :at, :fetch, :first, :last, :concat, :<<, :push, :pop, :shift, :unshift, :insert, :each, :each_index, :reverse_each, :length, :size, :empty?, :find_index, :index, :rindex, :join, :reverse, :reverse!, :rotate, :rotate!, :sort, :sort!, :sort_by!, :collect, :collect!, :map, :map!, :select, :select!, :keep_if, :values_at, :delete, :delete_at, :delete_if, :reject, :reject!, :zip, :transpose, :replace, :clear, :fill, :include?, :<=>, :slice, :slice!, :assoc, :rassoc, :+, :*, :-, :&, :|, :uniq, :uniq!, :compact, :compact!, :flatten, :flatten!, :count, :shuffle!, :shuffle, :sample, :cycle, :permutation, :combination, :repeated_permutation, :repeated_combination, :product, :take, :take_while, :drop, :drop_while, :bsearch, :any?, :pack, :total_product, :sum, :to_json, :entries, :sort_by, :grep, :find, :detect, :find_all, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by...

total = scores.inject { |subtotal, score| subtotal + score }  # => 16
total = scores.inject(:+)                                     # => 16
total = scores.sum                                            # => 16
total = scores.total_product                                  # => 200
#                             0      5      0   +   5    --> 5
#                             5      4      5   +   4    --> 9
#                             9      5      9   +   5    --> 14
#                             14     2      14  +   2    --> 16
#       16

puts total  # => nil

module Enumerable
  def map
  end

  def find
    # code here
  end

  def select
  end
end

class Kitty
  include Enumerable
  def each
    yield "Meow"            # => nil
    yield "Prrrrr"          # => nil
    yield "Nyan!"           # => nil
    yield "Human, go away"  # => nil
  end
end

kitty = Kitty.new  # => #<Kitty:0x007faffb85c728>

kitty.each do |message|  # => #<Kitty:0x007faffb85c728>
  puts message           # => nil, nil, nil, nil
end                      # => nil

messages = kitty.map { |message| "#{message}!"}             # ~> NoMethodError: undefined method `map' for #<Kitty:0x007faffb85c728>
found    = kitty.find { |message| message.end_with?("!") }


# >> [14, 13, 15, 12, 18, 24]
# >> 16
# >> [:inspect, :to_s, :to_a, :to_h, :to_ary, :frozen?, :==, :eql?, :hash, :[], :[]=, :at, :fetch, :first, :last, :concat, :<<, :push, :pop, :shift, :unshift, :insert, :each, :each_index, :reverse_each, :length, :size, :empty?, :find_index, :index, :rindex, :join, :reverse, :reverse!, :rotate, :rotate!, :sort, :sort!, :sort_by!, :collect, :collect!, :map, :map!, :select, :select!, :keep_if, :values_at, :delete, :delete_at, :delete_if, :reject, :reject!, :zip, :transpose, :replace, :clear, :fill, :include?, :<=>, :slice, :slice!, :assoc, :rassoc, :+, :*, :-, :&, :|, :uniq, :uniq!, :compact, :compact!, :flatten, :flatten!, :count, :shuffle!, :shuffle, :sample, :cycle, :permutation, :combination, :repeated_permutation, :repeated_combination, :product, :take, :take_while, :drop, :drop_while, :bsearch, :any?, :pack, :to_json, :entries, :sort_by, :grep, :find, :detect, :find_all, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :all?, :one?, :none?, :min, :max, :minmax...
# >> [:inspect, :to_s, :to_a, :to_h, :to_ary, :frozen?, :==, :eql?, :hash, :[], :[]=, :at, :fetch, :first, :last, :concat, :<<, :push, :pop, :shift, :unshift, :insert, :each, :each_index, :reverse_each, :length, :size, :empty?, :find_index, :index, :rindex, :join, :reverse, :reverse!, :rotate, :rotate!, :sort, :sort!, :sort_by!, :collect, :collect!, :map, :map!, :select, :select!, :keep_if, :values_at, :delete, :delete_at, :delete_if, :reject, :reject!, :zip, :transpose, :replace, :clear, :fill, :include?, :<=>, :slice, :slice!, :assoc, :rassoc, :+, :*, :-, :&, :|, :uniq, :uniq!, :compact, :compact!, :flatten, :flatten!, :count, :shuffle!, :shuffle, :sample, :cycle, :permutation, :combination, :repeated_permutation, :repeated_combination, :product, :take, :take_while, :drop, :drop_while, :bsearch, :any?, :pack, :total_product, :sum, :to_json, :entries, :sort_by, :grep, :find, :detect, :find_all, :flat_map, :collect_concat, :inject, :reduce, :partition, :group_by, :all?, :one?, :none...
# >> 200
# >> Meow
# >> Prrrrr
# >> Nyan!
# >> Human, go away

# ~> NoMethodError
# ~> undefined method `map' for #<Kitty:0x007faffb85c728>
# ~>
# ~> /Users/gstark/tiy/notes/week3/day-2/slides3.rb:56:in `<main>'
