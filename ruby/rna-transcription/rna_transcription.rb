class Complement
  attr_reader :dictionary
  def initialize
    @dictionary = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }
  end

  def dna_to_rna(dna)
    dictionary[dna.to_s.upcase]
  end

  def self.of_dna(dna)
    instance = Complement.new

    result = dna.to_s.chars.map do |char|
      instance.dna_to_rna(char)
    end.join('')

    return '' if result.length != dna.to_s.length
    result
  end
end

module BookKeeping
  VERSION = 4.freeze
end
