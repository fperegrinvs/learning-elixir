prefix = fn
n -> fn p -> "#{n} #{p}" end end
IO.puts prefix.("Elixir").("Rocks")
