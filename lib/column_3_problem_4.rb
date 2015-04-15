class Column3Problem4
  # Indexed by the 0-based month (i.e., February is at index 1)
  MONTH_LENGTHS = [
    31,
    28,
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31
  ]

  def date_distance(y1, m1, d1, y2, m2, d2)
    x1 = days_since_start_of_time(y1, m1, d1)
    x2 = days_since_start_of_time(y2, m2, d2)
    x2 - x1
  end

  private

  def days_since_start_of_time(y, m, d)
    y * 365 + MONTH_LENGTHS[0...m].inject(&:+) + d
  end
end
