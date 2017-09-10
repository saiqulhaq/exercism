class Hamming
  class << self
    # dna = DNA A
    # dnb = DNA B
    def compute(dna, dnb)
      raise ArgumentError if dna.to_s.length != dnb.to_s.length
      dnb = dnb.to_s.split('')
      dna.to_s.split('').zip(dnb).select {|r| r.uniq.count > 1}.count
    end
  end

  VERSION = 2.freeze
end
