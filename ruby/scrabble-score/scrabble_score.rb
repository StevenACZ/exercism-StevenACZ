class Scrabble
  LETTER_VALUES = {
    'a' => 1, 'e' => 1, 'i' => 1, 'o' => 1, 'u' => 1,
    'l' => 1, 'n' => 1, 'r' => 1, 's' => 1, 't' => 1,
    'd' => 2, 'g' => 2,
    'b' => 3, 'c' => 3, 'm' => 3, 'p' => 3,
    'f' => 4, 'h' => 4, 'v' => 4, 'w' => 4, 'y' => 4,
    'k' => 5,
    'j' => 8, 'x' => 8,
    'q' => 10, 'z' => 10,
  }

  private

  attr_reader :word

  public

  def initialize(word)
    @word = word.to_s.downcase
  end

  def self.score(word)
    new(word).score
  end

  def letters
    word.scan(/[a-z]/)
  end

  def score
    sound = 0
    letters.map { |letter| LETTER_VALUES[letter] }
    .each { |value| sound += value }
    sound
  end
end

if $PROGRAM_NAME == __FILE__
  puts Scrabble.new(nil).score
  puts Scrabble.new('OXYPHENBUTAZONE').score
  puts Scrabble.score('alacrity')
end