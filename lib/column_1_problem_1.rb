class Column1Problem1
  def sort(arr)
    if arr.size <= 1
      return arr
    end

    less = []
    more = []
    pivot, *rest = arr

    rest.each do |value|
      if value < pivot
        less << value
      else
        more << value
      end
    end

    sort(less) + [pivot] + sort(more)
  end
end
