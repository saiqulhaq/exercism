class Gigasecond
  AMOUNT = 1_000_000_000

  def self.from(time)
    raise ArgumentError unless time.is_a?(Time)
    Time.at(time.to_f + AMOUNT).utc
  end
end

module BookKeeping
  VERSION = 6.freeze
end
