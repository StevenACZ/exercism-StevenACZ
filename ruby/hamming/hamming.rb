=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  # compute function returns the count of different threads, as long as
  #   they have the same size, otherwise it will raise an ArgumentError
  def self.compute(dna_1, dna_2)
    raise ArgumentError unless dna_1.size == dna_2.size

    dna_1.chars.each_with_index.reduce(0) do |counter, (char, index)|
      char != dna_2[index] ? counter += 1 : counter
    end
  end
end
