=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym
  def self.abbreviate(phrase)
    resul = phrase.split(/[\s-]/).map { |char| char[0] && char[0].match(/^[a-zA-Z]+$/) }
    resul.join().upcase
  end
end
