class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40

  def remaining_minutes_in_oven(_actual_minutes_in_oven)
    raise 'Please implement the Lasagna#remaining_minutes_in_oven method'
  end

  def preparation_time_in_minutes(_layers)
    raise 'Please implement the Lasagna#preparation_time_in_minutes method'
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    raise 'Please implement the Lasagna#total_time_in_minutes method'
  end
end
