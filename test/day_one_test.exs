defmodule DayOneTest do
  use ExUnit.Case
  alias DayOne.PartOne
  alias DayOne.Input

  @input """
  3   4
  4   3
  2   5
  1   3
  3   9
  3   3
  """

  setup_all do
    {:ok, input: @input}
  end

  test "basic input parse", %{input: input} do
    assert Input.parse(input) ==
             {[3, 4, 2, 1, 3, 3], [4, 3, 5, 3, 9, 3]}
  end

  test "part one solve", %{input: input} do
    assert PartOne.distance(input) == 11
  end
end
