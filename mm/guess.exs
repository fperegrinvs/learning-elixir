defmodule Chop do
  def guess(answer, range, gue\\ 0)

  def guess(answer, _.._, answer) do
    IO.puts "#{answer}"
  end
  def guess(answer, a..b, gue) when answer > gue do
    new_guess = div(b-a,2)+a
    IO.puts "Is it #{new_guess} #{a}..#{b} #{gue}?"
    Chop.guess(answer, gue+1..b, new_guess)
  end
  def guess(answer, a..b, gue) when answer < gue do
    new_guess = div(b-a,2) + a
    IO.puts "Is it #{new_guess} #{a}..#{b} #{gue}"
    Chop.guess(answer, a..(gue-1), new_guess)
  end
end

Chop.guess(273, 1..1000)
