class Complement
  NUCLEOTIDES = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U',
  }

  def self.of_dna(dna)
    new_one = ''
    dna.each_char do |char|
      NUCLEOTIDES.each { |k, v| new_one += v if k == char }
    end
    new_one
  end
end
