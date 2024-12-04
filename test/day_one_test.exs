defmodule DayOneTest do
  use ExUnit.Case
  alias DayOne.Solution
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
    {:ok, input: @input, parsed_input: Input.parse(@input)}
  end

  test "basic input parse", %{input: input} do
    assert Input.parse(input) == [[3, 4], [4, 3], [2, 5], [1, 3], [3, 9], [3, 3]]
  end

  test "part one solve", %{parsed_input: parsed_input} do
    assert Solution.distance(parsed_input) == 11
  end

  test "part two solve", %{parsed_input: parsed_input} do
    assert Solution.similarity(parsed_input) == 31
  end
end
