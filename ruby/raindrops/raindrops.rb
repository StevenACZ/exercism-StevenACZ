# Raindrops class has a method that convert a number to a string
class Raindrops
  # initialize methods gets the data
  def initialize(integer, custom_rules = nil)
    @integer = integer
    @custom_rules = custom_rules || { 3 => "Pling", 5 => "Plang", 7 => "Plong" }
  end

  # convert methods convert a number to a string,
  #   the contents of which depend on the number's factors.
  def convert(integer, custom_rules)
    sound = ""
    custom_rules.each do |key, value|
      sound << value if integer % key == 0
    end
    sound.empty? ? "#{integer}" : sound
  end

  # to_s methods print the result
  def to_s
    convert(@integer, @custom_rules)
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