=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  attr_reader :rows, :columns

  def initialize(string_arr)
    @string_arr = string_arr
    @rows = matrix
    @columns = matrix.transpose
  end

  def matrix
    @string_arr.split(/\n/).map { |row| row.strip.split.map(&:to_i) }
  end
end
