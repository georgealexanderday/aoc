defmodule DayOne.Input do
  @input "input.txt"

  defp load do
    Path.dirname(__ENV__.file)
    |> Path.join(@input)
    |> File.read!()
  end

  defp parse(input) do
    {xs, ys} =
      input
      |> String.split("\n", trim: true)
      |> Enum.map(fn x -> String.split(x, "   ") end)
      |> Enum.map(fn [x, y] -> {String.to_integer(x), String.to_integer(y)} end)
      |> Enum.unzip()

    [Enum.sort(xs), Enum.sort(ys)]
  end

  def get() do
    load() |> parse()
  end
end
