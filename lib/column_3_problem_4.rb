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

  MONDAY = 0
  TUESDAY = 1
  WEDNESDAY = 2
  THURSDAY = 3
  FRIDAY = 4
  SATURDAY = 5
  SUNDAY = 6

  def date_distance(y1, m1, d1, y2, m2, d2)
    x1 = days_since_start_of_time(y1, m1, d1)
    x2 = days_since_start_of_time(y2, m2, d2)
    x2 - x1
  end

  def day_of_week(y, m, d)
    date_distance(2015, 4, 13, y, m, d) % 7
  end

  private

  def days_since_start_of_time(y, m, d)
    y * 365 + MONTH_LENGTHS[0...(m-1)].inject(0, &:+) + d
  end
end
