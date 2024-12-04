defmodule DayOne.Input do
  @input "input.txt"

  def load do
    Path.dirname(__ENV__.file)
    |> Path.join(@input)
    |> File.read!()
  end

  def parse(input) do
      input
      |> String.split("\n", trim: true)
      |> Enum.map(fn x -> String.split(x, "   ") end)
      |> Enum.map(fn [x, y] -> [String.to_integer(x), String.to_integer(y)] end)
  end

  def get() do
    load() |> parse()
  end
end
