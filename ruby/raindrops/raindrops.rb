# Raindrops class has a method that convert a number to a string
class Raindrops
  # convert function convert a number to a string,
  #   the contents of which depend on the number's factors.
  def self.convert(number)
    result = ""
    
    result += "Pling" if number % 3 == 0
    result += "Plang" if number % 5 == 0
    result += "Plong" if number % 7 == 0

    result.empty? ? number.to_s : result
  end
end
