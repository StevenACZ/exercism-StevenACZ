# Raindrops class has a method that convert a number to a string
class Raindrops
  # default rules
  RULES = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(integer)
    new(integer).to_s
  end

  private

  attr_reader :integer, :rules

  # initialize methods gets the data and
  #   if the user does not create some
  #   rules, the default ones will be used
  def initialize(integer, rules = RULES)
    @integer = integer
    @rules = rules
  end

  # factor? methods return a Boolean
  def factor?(number)
    integer % number == 0
  end

  # convert methods convert a number to a string,
  #   the contents of which depend on the number's
  #   factors and the rules
  def convert
    rules
      .select { |factor, _| factor?(factor)}
      .values
      .tap { |sound| sound << integer if sound.empty? }
      .join
  end

  public

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