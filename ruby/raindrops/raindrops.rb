# Raindrops class has a method that convert a number to a string
class Raindrops
  # default rules
  RULES = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  private

  # initialize methods gets the data and
  #   if the user does not create some
  #   rules, the default ones will be used
  def initialize(integer, rules = RULES)
    @integer = integer
    @rules = rules
  end

  def self.convert(integer)
    new(integer).to_s
  end

  protected

  # convert methods return @integer.to_s if the
  #   output function result is nil; otherwise, convert
  #   methods will return output function result
  def convert
    output || @integer.to_s
  end

  # factor? methods return a boolean
  def factor?(number)
    @integer % number == 0
  end

  # output methods convert a number to a string,
  #   the contents of which depend on the number's
  #   factors and the rules
  def output
    @rules
      .filter { |factor, _| factor?(factor) }
      .values
      .join
      .presence
  end

  public

  def to_s
    convert
  end
end

class String
  def presence
    self unless self.empty?
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