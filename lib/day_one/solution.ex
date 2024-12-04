defmodule DayOne.Solution do
  alias DayOne.Input

  def distance(input) do
    input
    |> Enum.zip_with(&Enum.sort/1)
    |> Enum.zip_reduce(0, fn [x, y], acc -> acc + abs(x - y) end)
  end

  def similarity(input) do
    [xs, ys] =
      input
      |> Enum.zip_with(&Enum.frequencies/1)

    Enum.reduce(xs, 0, fn {k, v}, acc -> acc + k * v * Map.get(ys, k, 0) end)
  end

  def part_one() do
    Input.get()
    |> distance()
  end

  def part_two() do
    Input.get()
    |> similarity()
  end
end
