class Squares
  attr_accessor :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    result = (1..number).to_a.inject(0) {|r, i| i += r }
    result * result
  end

  def sum_of_squares
    (1..number).to_a.inject(0) {|r, i| r += (i * i) }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4.freeze
end
