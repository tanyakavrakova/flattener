defmodule FlattenerTest do
  use ExUnit.Case
  doctest Flattener

  test "greets the world" do
    assert Flattener.hello() == :world
  end
end
