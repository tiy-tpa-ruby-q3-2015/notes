require 'minitest/autorun'
require 'minitest/spec'      # Backport of RSpec style tests

require_relative 'code'

# Number guesser between 1 and 100
describe NumberGuesser do
  it "first guess should be 50" do
    guesser = NumberGuesser.new

    assert_equal 50, guesser.current_guess
  end

  it "If 50 is too low then our guess should be 75" do
     guesser = NumberGuesser.new

     guesser.too_low!

     assert_equal 75, guesser.current_guess
  end

  it "If we've guessed too low and then too low again, our guess should be 87" do
     guesser = NumberGuesser.new

     guesser.too_low!
     guesser.too_low!

     assert_equal 87, guesser.current_guess
  end

  it "If we've guessed too low and then too high, our gess should be 62" do
     guesser = NumberGuesser.new

     guesser.too_low!
     guesser.too_high!

     assert_equal 62, guesser.current_guess
  end

  # FUNCTIONAL TEST
  it "our number is 42, the computer eventually gets it" do
    guesser = NumberGuesser.new

    assert_equal 50, guesser.current_guess
    guesser.too_high!
    assert_equal 25, guesser.current_guess
    guesser.too_low!
    assert_equal 37, guesser.current_guess
    guesser.too_low!
    assert_equal 43, guesser.current_guess
    guesser.too_high!
    assert_equal 40, guesser.current_guess
    guesser.too_low!
    assert_equal 41, guesser.current_guess
    guesser.too_low!
    assert_equal 42, guesser.current_guess
    # Winner winner, chicken dinner!
  end

  it "our number is 100, the computer eventually gets it" do
    guesser = NumberGuesser.new
    assert_equal 50, guesser.current_guess
    guesser.too_low!
    assert_equal 75, guesser.current_guess
    guesser.too_low!
    assert_equal 87, guesser.current_guess
    guesser.too_low!
    assert_equal 93, guesser.current_guess
    guesser.too_low!
    assert_equal 96, guesser.current_guess
    guesser.too_low!
    assert_equal 98, guesser.current_guess
    guesser.too_low!
    assert_equal 99, guesser.current_guess
    guesser.too_low!
    assert_equal 99, guesser.current_guess
    guesser.too_low!
    # WTF?! need to fix this
  end
end
