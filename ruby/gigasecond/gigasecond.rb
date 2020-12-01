=begin
Write your code for the 'Gigasecond' exercise in this file. Make the tests in
`gigasecond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/gigasecond` directory.
=end

class Gigasecond
  GIGASECOND = 10**9
  
  def self.from(from_time)
    from_time + GIGASECOND
  end
end
