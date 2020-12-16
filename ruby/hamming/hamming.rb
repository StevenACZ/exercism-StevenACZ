=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(dna_1, dna_2)
    raise ArgumentError unless dna_1.size == dna_2.size

    count = 0
    dna_1.chars.each_with_index { |char, index| count += 1 unless char == dna_2[index] }
    count
  end
end
