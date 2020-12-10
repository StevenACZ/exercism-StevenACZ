=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(string_num)
    @string_num = string_num.chars
  end

  def slices(n_times)
    raise ArgumentError unless n_times <= @string_num.size
    @string_num.each_cons(n_times).map(&:join)
  end
end
