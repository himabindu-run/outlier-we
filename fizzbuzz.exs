# 3 5
# True True FizzBuzz
# True False Fizz
# False True Buzz
# False False i
defmodule FizzBuzz do
  @fizzes_buzzes %{
    {true, true} => "FizzBuzz",
    {true, false} => "Fizz",
    {false, true} => "Buzz"
  }
  def fb(x) do
    Map.get(@fizzes_buzzes, {rem(x, 3) == 0, rem(x, 5) == 0}, to_string(x))
  end

  def fizzbuzz(n) do
    1..n
    |> Enum.map(&fb/1)
  end
end
