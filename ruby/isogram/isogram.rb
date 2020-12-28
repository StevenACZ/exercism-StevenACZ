# Isogram class has a method that determine
#   if a word or phrase is an isogram.
class Isogram
  # isogram? methods return true or false
  #   if a word or phrase is an isogram.
  def self.isogram?(string)
    string.downcase.scan(/[a-z]/).uniq == string.downcase.scan(/[a-z]/)
  end
end
