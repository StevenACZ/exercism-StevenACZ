class Pangram
  def self.pangram?(sentence)
    (("a".."z").to_a - sentence.downcase.split("")).empty?
  end
end
