fizzbuzz = fn
  (0,0,_) -> "FizzBuzz"
  (0,_,_) -> "Fizz"
  (_,0,_) -> "Buzz"
  (_,_,c) -> c
end

fiz_rem = fn
(n) -> fizzbuzz.(rem(n,3),rem(n,5), n)
end

IO.puts fizzbuzz.(0,0,0)
IO.puts fizzbuzz.(1,0,1)
IO.puts fiz_rem.(10)
IO.puts fiz_rem.(11)
