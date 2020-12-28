# Raindrops class has a method that convert a number to a string
class Raindrops
  # default rules
  RULES = { 3 => "Pling", 5 => "Plang", 7 => "Plong" }

  # initialize methods gets the data
  def initialize(integer, rules = RULES)
    @integer = integer
    @rules = rules
  end

  # self.convert method redirects to the true convert method
  def self.convert(integer, rules = RULES)
    new(integer, rules).to_s
  end

  # convert methods convert a number to a string,
  #   the contents of which depend on the number's factors.
  def convert
    sound = ""
    @rules.each do |key, value|
      sound << value if @integer % key == 0
    end
    sound.empty? ? @integer.to_s : sound
  end

  # to_s methods print the result
  def to_s
    convert
  end
end

if $PROGRAM_NAME == __FILE__
  custom_rules = {
    3 => 'Fizz',
    5 => 'Buzz'
  }
  -15.upto(15) do |drip|
    puts Raindrops.new(drip, custom_rules)
  end
end