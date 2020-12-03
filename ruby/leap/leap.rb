=begin
Write your code for the 'Leap' exercise in this file. Make the tests in
`leap_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/leap` directory.
=end

class Year
  def self.leap?(year)
    return year.divisible_by?(100) ? year.divisible_by?(400) : year.divisible_by?(4)
  end
end

class Integer
  def divisible_by?(divisor)
    self % divisor == 0
  end
end
