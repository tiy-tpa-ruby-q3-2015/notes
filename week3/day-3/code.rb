class NumberGuesser
  attr_accessor :lowest_guess
  attr_accessor :highest_guess

  def initialize
    self.lowest_guess  = 1
    self.highest_guess = 100
  end

  def current_guess
    (self.lowest_guess + self.highest_guess)/2
  end

  def too_high!
    self.highest_guess = current_guess
  end

  def too_low!
    self.lowest_guess = current_guess
  end
end

# TDD

# Write test first
# See that fails                 (Red)
# -- Change the error message
# -- Make the test pass          (Green)
#
#                                (Refactor?)
# Write another test
