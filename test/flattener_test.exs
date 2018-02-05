defmodule FlattenerTest do
  use ExUnit.Case
  doctest Flattener

  test "flattens simple list" do
    assert Flattener.flatten([["a", "b"], "c", ["d", ["e"]]]) == ["a", "b", "c", "d", "e"]
  end

  test "flattens complex list" do
    assert Flattener.flatten([[[[], [], [[[], []]]],"a"], ["b", "c"], ["d", ["e", "f"]]]) == ["a", "b", "c", "d", "e", "f"]
  end
end
