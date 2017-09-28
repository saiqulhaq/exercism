class Raindrops
  attr_accessor :number
  attr_reader :dictionary

  def initialize(number)
    self.number = number
    @dictionary = {
      '3' => 'Pling',
      '5' => 'Plang',
      '7' => 'Plong'
    }
  end

  def factors
    @factors ||= (1..number).to_a.select do |n|
      (number % n).zero?
    end
  end

  def no_factors?
    dictionary.keys.map(&:to_i).select { |f| factors.include?(f) }.empty?
  end

  def to_s
    return number.to_s if no_factors?
    factors.map { |f| dictionary[f.to_s].to_s }.join
  end

  def self.convert(number)
    Raindrops.new(number).to_s
  end
end

module BookKeeping
  VERSION = 3.freeze
end
