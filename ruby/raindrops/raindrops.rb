# Raindrops class has a method that convert a number to a string
class Raindrops
  # convert methods convert a number to a string,
  #   the contents of which depend on the number's factors.
  def self.convert(integer)
    sound = ""
    sound << "Pling" if integer % 3 == 0
    sound << "Plang" if integer % 5 == 0
    sound << "Plong" if integer % 7 == 0
    sound.empty? ? "#{integer}" : sound
  end
end