defmodule DayOne.PartOne do
  alias DayOne.Input

  def distance(input) do
    input
    |> Enum.zip()
    |> Enum.reduce(0, fn {x, y}, acc -> acc + abs(x - y) end)
  end

  def part_one() do
    Input.get()
    |> distance()
  end
end
