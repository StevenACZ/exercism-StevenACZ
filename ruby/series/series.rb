=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(string_num)
    @string_num = string_num.split("")
  end

  def slices(n_times)
    raise ArgumentError if n_times > @string_num.size
    
    res = []
    i = 0

    while i + n_times <= @string_num.size
      res.push(@string_num[i, n_times].join)
      i += 1
    end

    res
  end
end
