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
    year_distance(y2, y1) + month_distance(m2, m1) + day_distance(d2, d1)
  end

  private

  def year_distance(y2, y1)
    365 * (y2 - y1)
  end

  def month_distance(m2, m1)
    d = 0;
    (m1+1).upto(m2) do |i|
      d += month_length(i)
    end
    d
  end

  def day_distance(d2, d1)
    d2 - d1
  end

  def month_length(i)
    MONTH_LENGTHS[i - 1]
  end
end
