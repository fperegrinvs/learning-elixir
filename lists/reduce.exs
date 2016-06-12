defmodule MyList do
  def reduce([], value, func) do
    value
  end
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([head | tail], func) do
    [h | t] = _mapsum [head | tail], func
    reduce [h | t], 0, &(&1 + &2)
  end
  defp _mapsum([], func) do
    []
  end

  defp _mapsum([head|tail],func) do
    [func.(head) | _mapsum(tail, func)]
  end

  def maxp(head, m \\ 0)

  def maxp([], m) do
    m
  end
  def maxp([head|tail], m) when head > m do
     maxp([tail], head)
  end
  def maxp([head|tail], m) when head <= m do
    maxp([tail], m)
  end
end
